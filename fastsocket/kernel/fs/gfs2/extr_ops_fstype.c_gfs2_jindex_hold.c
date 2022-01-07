
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char* name; int len; int hash; } ;
struct gfs2_sbd {int sd_journals; int sd_jindex_mutex; int sd_jindex_spin; int sd_jindex_list; int sd_jindex; } ;
struct gfs2_jdesc {int jd_list; scalar_t__ jd_jid; int jd_inode; int jd_work; int extent_list; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct gfs2_inode* GFS2_I (int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int LM_ST_SHARED ;
 int PTR_ERR (int ) ;
 int gfs2_dir_check (int ,struct qstr*,int *) ;
 int gfs2_disk_hash (char*,int ) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_lookupi (int ,struct qstr*,int) ;
 int gfs2_recover_ops ;
 int kfree (struct gfs2_jdesc*) ;
 struct gfs2_jdesc* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int slow_work_init (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int gfs2_jindex_hold(struct gfs2_sbd *sdp, struct gfs2_holder *ji_gh)
{
 struct gfs2_inode *dip = GFS2_I(sdp->sd_jindex);
 struct qstr name;
 char buf[20];
 struct gfs2_jdesc *jd;
 int error;

 name.name = buf;

 mutex_lock(&sdp->sd_jindex_mutex);

 for (;;) {
  error = gfs2_glock_nq_init(dip->i_gl, LM_ST_SHARED, 0, ji_gh);
  if (error)
   break;

  name.len = sprintf(buf, "journal%u", sdp->sd_journals);
  name.hash = gfs2_disk_hash(name.name, name.len);

  error = gfs2_dir_check(sdp->sd_jindex, &name, ((void*)0));
  if (error == -ENOENT) {
   error = 0;
   break;
  }

  gfs2_glock_dq_uninit(ji_gh);

  if (error)
   break;

  error = -ENOMEM;
  jd = kzalloc(sizeof(struct gfs2_jdesc), GFP_KERNEL);
  if (!jd)
   break;

  INIT_LIST_HEAD(&jd->extent_list);
  slow_work_init(&jd->jd_work, &gfs2_recover_ops);
  jd->jd_inode = gfs2_lookupi(sdp->sd_jindex, &name, 1);
  if (!jd->jd_inode || IS_ERR(jd->jd_inode)) {
   if (!jd->jd_inode)
    error = -ENOENT;
   else
    error = PTR_ERR(jd->jd_inode);
   kfree(jd);
   break;
  }

  spin_lock(&sdp->sd_jindex_spin);
  jd->jd_jid = sdp->sd_journals++;
  list_add_tail(&jd->jd_list, &sdp->sd_jindex_list);
  spin_unlock(&sdp->sd_jindex_spin);
 }

 mutex_unlock(&sdp->sd_jindex_mutex);

 return error;
}
