
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct p9_wstat {int size; int qid; int name; } ;
struct p9_rdir {int head; int tail; int mutex; int * buf; } ;
struct p9_fid {TYPE_5__* clnt; void* rdir; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {int f_pos; TYPE_4__* f_dentry; struct p9_fid* private_data; TYPE_3__ f_path; } ;
typedef int (* filldir_t ) (void*,int ,int ,int,int ,int ) ;
struct TYPE_10__ {int msize; int dotu; } ;
struct TYPE_9__ {int d_lock; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,int) ;
 int P9_IOHDRSZ ;
 int dt_type (struct p9_wstat*) ;
 int kfree (struct p9_rdir*) ;
 struct p9_rdir* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int p9stat_free (struct p9_wstat*) ;
 int p9stat_read (int *,int,struct p9_wstat*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (int ) ;
 int v9fs_file_readn (struct file*,int *,int *,int,int) ;
 int v9fs_qid2ino (int *) ;

__attribute__((used)) static int v9fs_dir_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 int over;
 struct p9_wstat st;
 int err = 0;
 struct p9_fid *fid;
 int buflen;
 int reclen = 0;
 struct p9_rdir *rdir;

 P9_DPRINTK(P9_DEBUG_VFS, "name %s\n", filp->f_path.dentry->d_name.name);
 fid = filp->private_data;

 buflen = fid->clnt->msize - P9_IOHDRSZ;


 if (!fid->rdir) {
  rdir = kmalloc(sizeof(struct p9_rdir) + buflen, GFP_KERNEL);

  if (rdir == ((void*)0)) {
   err = -ENOMEM;
   goto exit;
  }
  spin_lock(&filp->f_dentry->d_lock);
  if (!fid->rdir) {
   rdir->buf = (uint8_t *)rdir + sizeof(struct p9_rdir);
   mutex_init(&rdir->mutex);
   rdir->head = rdir->tail = 0;
   fid->rdir = (void *) rdir;
   rdir = ((void*)0);
  }
  spin_unlock(&filp->f_dentry->d_lock);
  kfree(rdir);
 }
 rdir = (struct p9_rdir *) fid->rdir;

 err = mutex_lock_interruptible(&rdir->mutex);
 while (err == 0) {
  if (rdir->tail == rdir->head) {
   err = v9fs_file_readn(filp, rdir->buf, ((void*)0),
       buflen, filp->f_pos);
   if (err <= 0)
    goto unlock_and_exit;

   rdir->head = 0;
   rdir->tail = err;
  }

  while (rdir->head < rdir->tail) {
   err = p9stat_read(rdir->buf + rdir->head,
      buflen - rdir->head, &st,
      fid->clnt->dotu);
   if (err) {
    P9_DPRINTK(P9_DEBUG_VFS, "returned %d\n", err);
    err = -EIO;
    p9stat_free(&st);
    goto unlock_and_exit;
   }
   reclen = st.size+2;

   over = filldir(dirent, st.name, strlen(st.name),
       filp->f_pos, v9fs_qid2ino(&st.qid), dt_type(&st));

   p9stat_free(&st);

   if (over) {
    err = 0;
    goto unlock_and_exit;
   }
   rdir->head += reclen;
   filp->f_pos += reclen;
  }
 }

unlock_and_exit:
 mutex_unlock(&rdir->mutex);
exit:
 return err;
}
