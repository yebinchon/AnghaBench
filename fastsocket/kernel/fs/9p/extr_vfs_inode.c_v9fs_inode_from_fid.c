
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct super_block {int dummy; } ;
struct p9_wstat {int qid; int i_ino; int mode; } ;
struct p9_fid {int dummy; } ;
struct inode {int qid; int i_ino; int mode; } ;


 struct p9_wstat* ERR_CAST (struct p9_wstat*) ;
 struct p9_wstat* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_wstat*) ;
 int PTR_ERR (struct p9_wstat*) ;
 int kfree (struct p9_wstat*) ;
 struct p9_wstat* p9_client_stat (struct p9_fid*) ;
 int p9mode2unixmode (struct v9fs_session_info*,int ) ;
 int p9stat_free (struct p9_wstat*) ;
 int v9fs_cache_inode_get_cookie (struct p9_wstat*) ;
 struct p9_wstat* v9fs_get_inode (struct super_block*,int) ;
 int v9fs_qid2ino (int *) ;
 int v9fs_stat2inode (struct p9_wstat*,struct p9_wstat*,struct super_block*) ;
 int v9fs_vcookie_set_qid (struct p9_wstat*,int *) ;

__attribute__((used)) static struct inode *
v9fs_inode_from_fid(struct v9fs_session_info *v9ses, struct p9_fid *fid,
 struct super_block *sb)
{
 int err, umode;
 struct inode *ret;
 struct p9_wstat *st;

 ret = ((void*)0);
 st = p9_client_stat(fid);
 if (IS_ERR(st))
  return ERR_CAST(st);

 umode = p9mode2unixmode(v9ses, st->mode);
 ret = v9fs_get_inode(sb, umode);
 if (IS_ERR(ret)) {
  err = PTR_ERR(ret);
  goto error;
 }

 v9fs_stat2inode(st, ret, sb);
 ret->i_ino = v9fs_qid2ino(&st->qid);





 p9stat_free(st);
 kfree(st);

 return ret;

error:
 p9stat_free(st);
 kfree(st);
 return ERR_PTR(err);
}
