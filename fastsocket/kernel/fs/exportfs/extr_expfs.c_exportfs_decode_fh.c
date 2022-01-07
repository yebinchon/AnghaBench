
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {TYPE_2__* mnt_sb; } ;
struct fid {int dummy; } ;
struct export_operations {struct dentry* (* fh_to_parent ) (TYPE_2__*,struct fid*,int,int) ;struct dentry* (* fh_to_dentry ) (TYPE_2__*,struct fid*,int,int) ;} ;
struct dentry {int d_flags; TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct export_operations* s_export_op; } ;
struct TYPE_4__ {int i_mutex; int i_mode; } ;


 int DCACHE_DISCONNECTED ;
 int EACCES ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int NAME_MAX ;
 int PTR_ERR (struct dentry*) ;
 scalar_t__ S_ISDIR (int ) ;
 int dput (struct dentry*) ;
 int exportfs_get_name (struct vfsmount*,struct dentry*,char*,struct dentry*) ;
 struct dentry* find_acceptable_alias (struct dentry*,int (*) (void*,struct dentry*),void*) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reconnect_path (struct vfsmount*,struct dentry*,char*) ;
 int strlen (char*) ;
 struct dentry* stub1 (TYPE_2__*,struct fid*,int,int) ;
 struct dentry* stub2 (TYPE_2__*,struct fid*,int,int) ;

struct dentry *exportfs_decode_fh(struct vfsmount *mnt, struct fid *fid,
  int fh_len, int fileid_type,
  int (*acceptable)(void *, struct dentry *), void *context)
{
 const struct export_operations *nop = mnt->mnt_sb->s_export_op;
 struct dentry *result, *alias;
 char nbuf[NAME_MAX+1];
 int err;




 result = nop->fh_to_dentry(mnt->mnt_sb, fid, fh_len, fileid_type);
 if (!result)
  result = ERR_PTR(-ESTALE);
 if (IS_ERR(result))
  return result;

 if (S_ISDIR(result->d_inode->i_mode)) {
  if (result->d_flags & DCACHE_DISCONNECTED) {
   err = reconnect_path(mnt, result, nbuf);
   if (err)
    goto err_result;
  }

  if (!acceptable(context, result)) {
   err = -EACCES;
   goto err_result;
  }

  return result;
 } else {



  struct dentry *target_dir, *nresult;
  alias = find_acceptable_alias(result, acceptable, context);
  if (alias)
   return alias;





  err = -ESTALE;
  if (!nop->fh_to_parent)
   goto err_result;

  target_dir = nop->fh_to_parent(mnt->mnt_sb, fid,
    fh_len, fileid_type);
  if (!target_dir)
   goto err_result;
  err = PTR_ERR(target_dir);
  if (IS_ERR(target_dir))
   goto err_result;






  err = reconnect_path(mnt, target_dir, nbuf);
  if (err) {
   dput(target_dir);
   goto err_result;
  }






  err = exportfs_get_name(mnt, target_dir, nbuf, result);
  if (!err) {
   mutex_lock(&target_dir->d_inode->i_mutex);
   nresult = lookup_one_len(nbuf, target_dir,
       strlen(nbuf));
   mutex_unlock(&target_dir->d_inode->i_mutex);
   if (!IS_ERR(nresult)) {
    if (nresult->d_inode) {
     dput(result);
     result = nresult;
    } else
     dput(nresult);
   }
  }





  dput(target_dir);





  alias = find_acceptable_alias(result, acceptable, context);
  if (!alias) {
   err = -EACCES;
   goto err_result;
  }

  return alias;
 }

 err_result:
 dput(result);
 return ERR_PTR(err);
}
