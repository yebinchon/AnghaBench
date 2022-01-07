
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct path {scalar_t__ mnt; struct file* dentry; } ;
struct TYPE_10__ {size_t len; scalar_t__* name; } ;
struct TYPE_14__ {scalar_t__ mnt; struct file* dentry; } ;
struct TYPE_11__ {int flags; int create_mode; struct file* file; } ;
struct TYPE_12__ {TYPE_3__ open; } ;
struct nameidata {scalar_t__ last_type; int flags; TYPE_2__ last; TYPE_6__ path; TYPE_6__ root; TYPE_4__ intent; } ;
struct filename {char* name; } ;
struct file {int f_flags; TYPE_5__* d_inode; } ;
struct dentry {int f_flags; TYPE_5__* d_inode; } ;
struct TYPE_13__ {int i_mutex; int i_mode; TYPE_1__* i_op; } ;
struct TYPE_9__ {scalar_t__ follow_link; } ;


 int ACC_MODE (int) ;
 int EEXIST ;
 int EISDIR ;
 int ELOOP ;
 int ENFILE ;
 int ENOENT ;
 int EROFS ;
 struct file* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct file*) ;
 scalar_t__ LAST_BIND ;
 scalar_t__ LAST_NORM ;
 int LOOKUP_CREATE ;
 int LOOKUP_EXCL ;
 int LOOKUP_OPEN ;
 int LOOKUP_PARENT ;
 int MAY_APPEND ;
 int MAY_OPEN ;
 int MAY_WRITE ;
 int O_APPEND ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NOFOLLOW ;
 int O_TRUNC ;
 int PTR_ERR (struct file*) ;
 scalar_t__ S_ISDIR (int ) ;
 int __do_follow_link (struct path*,struct nameidata*) ;
 int __open_namei_create (struct nameidata*,struct path*,int,int) ;
 int __putname (scalar_t__*) ;
 int audit_dummy_context () ;
 int audit_inode (struct filename*,struct file*,int) ;
 int filename_lookup (int,struct filename*,int,struct nameidata*) ;
 int follow_managed (struct path*,int) ;
 int fput (struct file*) ;
 struct file* get_empty_filp () ;
 int handle_truncate (struct file*) ;
 int ima_file_check (struct file*,int) ;
 int lookup_flags (int) ;
 void* lookup_hash (struct nameidata*) ;
 int may_open (TYPE_6__*,int,int) ;
 int mnt_drop_write (scalar_t__) ;
 int mnt_want_write (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct file* nameidata_to_filp (struct nameidata*) ;
 int open_to_namei_flags (int) ;
 int open_will_truncate (int,TYPE_5__*) ;
 int path_init (int,char const*,int,struct nameidata*) ;
 int path_put (TYPE_6__*) ;
 int path_put_conditional (struct path*,struct nameidata*) ;
 int path_to_nameidata (struct path*,struct nameidata*) ;
 int path_walk (struct filename*,struct nameidata*) ;
 int release_open_intent (struct nameidata*) ;
 int security_inode_follow_link (struct file*,struct nameidata*) ;
 scalar_t__ unlikely (int) ;
 int vfs_dq_init (TYPE_5__*) ;

struct file *do_filp_open(int dfd, struct filename *filename,
  int open_flag, int mode, int acc_mode)
{
 struct file *filp;
 struct nameidata nd;
 int error;
 struct path path;
 struct dentry *dir;
 int count = 0;
 int will_truncate;
 int flag = open_to_namei_flags(open_flag);
 int got_write = 0;
 const char *pathname = filename->name;

 if (!acc_mode)
  acc_mode = MAY_OPEN | ACC_MODE(flag);


 if (flag & O_TRUNC)
  acc_mode |= MAY_WRITE;



 if (flag & O_APPEND)
  acc_mode |= MAY_APPEND;




 if (!(flag & O_CREAT)) {
  filp = get_empty_filp();

  if (filp == ((void*)0))
   return ERR_PTR(-ENFILE);
  nd.intent.open.file = filp;
  filp->f_flags = open_flag;
  nd.intent.open.flags = flag;
  nd.intent.open.create_mode = 0;
  error = filename_lookup(dfd, filename,
     lookup_flags(flag)|LOOKUP_OPEN, &nd);
  if (IS_ERR(nd.intent.open.file)) {
   if (error == 0) {
    error = PTR_ERR(nd.intent.open.file);
    path_put(&nd.path);
   }
  } else if (error)
   release_open_intent(&nd);
  if (error)
   return ERR_PTR(error);
  goto ok;
 }




 error = path_init(dfd, pathname, LOOKUP_PARENT, &nd);
 if (error)
  return ERR_PTR(error);
 error = path_walk(filename, &nd);
 if (error) {
  if (nd.root.mnt)
   path_put(&nd.root);
  return ERR_PTR(error);
 }
 if (unlikely(!audit_dummy_context()))
  audit_inode(filename, nd.path.dentry, LOOKUP_PARENT);






 error = -EISDIR;
 if (nd.last_type != LAST_NORM || nd.last.name[nd.last.len])
  goto exit_parent;

 error = -ENFILE;
 filp = get_empty_filp();
 if (filp == ((void*)0))
  goto exit_parent;
 nd.intent.open.file = filp;
 filp->f_flags = open_flag;
 nd.intent.open.flags = flag;
 nd.intent.open.create_mode = mode;
 dir = nd.path.dentry;
 nd.flags &= ~LOOKUP_PARENT;
 nd.flags |= LOOKUP_CREATE | LOOKUP_OPEN;
 if (flag & O_EXCL)
  nd.flags |= LOOKUP_EXCL;
 error = mnt_want_write(nd.path.mnt);
 if (!error)
  got_write = 1;

 mutex_lock(&dir->d_inode->i_mutex);
 path.dentry = lookup_hash(&nd);
 path.mnt = nd.path.mnt;

do_last:
 error = PTR_ERR(path.dentry);
 if (IS_ERR(path.dentry)) {
  mutex_unlock(&dir->d_inode->i_mutex);
  if (got_write)
   mnt_drop_write(nd.path.mnt);
  goto exit;
 }

 if (IS_ERR(nd.intent.open.file)) {
  error = PTR_ERR(nd.intent.open.file);
  goto exit_mutex_unlock;
 }


 if (!path.dentry->d_inode) {
  if (!got_write) {
   error = -EROFS;
   goto exit_mutex_unlock;
  }
  error = __open_namei_create(&nd, &path, open_flag, mode);
  if (error) {
   mnt_drop_write(nd.path.mnt);
   goto exit;
  }
  filp = nameidata_to_filp(&nd);
  mnt_drop_write(nd.path.mnt);
  if (nd.root.mnt)
   path_put(&nd.root);
  if (!IS_ERR(filp)) {
   error = ima_file_check(filp, acc_mode);
   if (error) {
    fput(filp);
    filp = ERR_PTR(error);
   }
  }
  return filp;
 }




 mutex_unlock(&dir->d_inode->i_mutex);
 if (got_write) {
  mnt_drop_write(nd.path.mnt);
  got_write = 0;
 }
 audit_inode(filename, path.dentry, 0);

 error = -EEXIST;
 if (flag & O_EXCL)
  goto exit_dput;

 error = follow_managed(&path, nd.flags);
 if (error < 0)
  goto exit_dput;


 error = -ENOENT;
 if (!path.dentry->d_inode)
  goto exit_dput;
 if (path.dentry->d_inode->i_op->follow_link)
  goto do_link;

 path_to_nameidata(&path, &nd);
 error = -EISDIR;
 if (path.dentry->d_inode && S_ISDIR(path.dentry->d_inode->i_mode))
  goto exit;
ok:
 will_truncate = open_will_truncate(flag, nd.path.dentry->d_inode);
 if (will_truncate) {
  error = mnt_want_write(nd.path.mnt);
  if (error)
   goto exit;
 }
 error = may_open(&nd.path, acc_mode, open_flag);
 if (error) {
  if (will_truncate)
   mnt_drop_write(nd.path.mnt);
  goto exit;
 }
 filp = nameidata_to_filp(&nd);
 if (!IS_ERR(filp)) {
  error = ima_file_check(filp, acc_mode);
  if (error) {
   fput(filp);
   filp = ERR_PTR(error);
  }
 }
 if (!IS_ERR(filp)) {
  if (acc_mode & MAY_WRITE)
   vfs_dq_init(nd.path.dentry->d_inode);

  if (will_truncate) {
   error = handle_truncate(filp);
   if (error) {
    fput(filp);
    filp = ERR_PTR(error);
   }
  }
 }





 if (will_truncate)
  mnt_drop_write(nd.path.mnt);
 if (nd.root.mnt)
  path_put(&nd.root);
 return filp;

exit_mutex_unlock:
 mutex_unlock(&dir->d_inode->i_mutex);
 if (got_write)
  mnt_drop_write(nd.path.mnt);
exit_dput:
 path_put_conditional(&path, &nd);
exit:
 if (!IS_ERR(nd.intent.open.file))
  release_open_intent(&nd);
exit_parent:
 if (nd.root.mnt)
  path_put(&nd.root);
 path_put(&nd.path);
 return ERR_PTR(error);

do_link:
 error = -ELOOP;
 if (flag & O_NOFOLLOW)
  goto exit_dput;
 nd.flags |= LOOKUP_PARENT;
 error = security_inode_follow_link(path.dentry, &nd);
 if (error)
  goto exit_dput;
 error = __do_follow_link(&path, &nd);
 if (error) {




  release_open_intent(&nd);
  if (nd.root.mnt)
   path_put(&nd.root);
  return ERR_PTR(error);
 }
 nd.flags &= ~LOOKUP_PARENT;
 if (nd.last_type == LAST_BIND)
  goto ok;
 error = -EISDIR;
 if (nd.last_type != LAST_NORM)
  goto exit;
 if (nd.last.name[nd.last.len]) {
  __putname(nd.last.name);
  goto exit;
 }
 error = -ELOOP;
 if (count++==32) {
  __putname(nd.last.name);
  goto exit;
 }
 dir = nd.path.dentry;
 error = mnt_want_write(nd.path.mnt);
 if (!error)
  got_write = 1;
 mutex_lock(&dir->d_inode->i_mutex);
 path.dentry = lookup_hash(&nd);
 path.mnt = nd.path.mnt;
 __putname(nd.last.name);
 goto do_last;
}
