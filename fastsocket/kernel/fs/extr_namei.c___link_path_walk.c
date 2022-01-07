
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct qstr {char const* name; int len; int hash; } ;
struct path {TYPE_5__* dentry; } ;
struct TYPE_12__ {TYPE_6__* dentry; } ;
struct nameidata {unsigned int flags; TYPE_10__ path; int last_type; struct qstr last; scalar_t__ depth; } ;
struct inode {TYPE_3__* i_op; } ;
struct filename {char* name; } ;
struct TYPE_18__ {struct inode* d_inode; TYPE_4__* d_op; TYPE_2__* d_sb; } ;
struct TYPE_17__ {struct inode* d_inode; } ;
struct TYPE_16__ {int (* d_hash ) (TYPE_6__*,struct qstr*) ;int (* d_revalidate ) (TYPE_6__*,struct nameidata*) ;int (* d_weak_revalidate ) (TYPE_6__*,struct nameidata*) ;} ;
struct TYPE_15__ {int lookup; scalar_t__ follow_link; } ;
struct TYPE_14__ {TYPE_1__* s_type; } ;
struct TYPE_13__ {int fs_flags; } ;


 int ENOENT ;
 int ENOTDIR ;
 int ESTALE ;
 int FS_REVAL_DOT ;
 int FS_WEAK_REVALIDATE ;
 int LAST_DOT ;
 int LAST_DOTDOT ;
 int LAST_NORM ;
 unsigned int LOOKUP_CONTINUE ;
 unsigned int LOOKUP_DIRECTORY ;
 unsigned int LOOKUP_FOLLOW ;
 unsigned int LOOKUP_PARENT ;
 int audit_dummy_context () ;
 int audit_inode (struct filename*,TYPE_6__*,unsigned int) ;
 int do_follow_link (struct path*,struct nameidata*) ;
 int do_lookup (struct nameidata*,struct qstr*,struct path*) ;
 int end_name_hash (unsigned long) ;
 int exec_permission_lite (struct inode*) ;
 int follow_dotdot (struct nameidata*) ;
 scalar_t__ follow_on_final (struct inode*,unsigned int) ;
 unsigned long init_name_hash () ;
 unsigned long partial_name_hash (unsigned int,unsigned long) ;
 int path_put (TYPE_10__*) ;
 int path_put_conditional (struct path*,struct nameidata*) ;
 int path_to_nameidata (struct path*,struct nameidata*) ;
 int stub1 (TYPE_6__*,struct qstr*) ;
 int stub2 (TYPE_6__*,struct qstr*) ;
 int stub3 (TYPE_6__*,struct nameidata*) ;
 int stub4 (TYPE_6__*,struct nameidata*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __link_path_walk(struct filename *filename, struct nameidata *nd)
{
 struct path next;
 struct inode *inode;
 int err;
 unsigned int lookup_flags = nd->flags;
 const char *name = filename->name;

 while (*name=='/')
  name++;
 if (!*name)
  goto return_reval;

 inode = nd->path.dentry->d_inode;
 if (nd->depth)
  lookup_flags = LOOKUP_FOLLOW | (nd->flags & LOOKUP_CONTINUE);


 for(;;) {
  unsigned long hash;
  struct qstr this;
  unsigned int c;

  nd->flags |= LOOKUP_CONTINUE;
  err = exec_permission_lite(inode);
   if (err)
   break;

  this.name = name;
  c = *(const unsigned char *)name;

  hash = init_name_hash();
  do {
   name++;
   hash = partial_name_hash(c, hash);
   c = *(const unsigned char *)name;
  } while (c && (c != '/'));
  this.len = name - (const char *) this.name;
  this.hash = end_name_hash(hash);


  if (!c)
   goto last_component;
  while (*++name == '/');
  if (!*name)
   goto last_with_slashes;






  if (this.name[0] == '.') switch (this.len) {
   default:
    break;
   case 2:
    if (this.name[1] != '.')
     break;
    follow_dotdot(nd);
    inode = nd->path.dentry->d_inode;

   case 1:
    continue;
  }




  if (nd->path.dentry->d_op && nd->path.dentry->d_op->d_hash) {
   err = nd->path.dentry->d_op->d_hash(nd->path.dentry,
           &this);
   if (err < 0)
    break;
  }

  err = do_lookup(nd, &this, &next);
  if (err)
   break;

  err = -ENOENT;
  inode = next.dentry->d_inode;
  if (!inode)
   goto out_dput;

  if (inode->i_op->follow_link) {
   err = do_follow_link(&next, nd);
   if (err)
    goto return_err;
   err = -ENOENT;
   inode = nd->path.dentry->d_inode;
   if (!inode)
    break;
  } else
   path_to_nameidata(&next, nd);
  err = -ENOTDIR;
  if (!inode->i_op->lookup)
   break;
  continue;


last_with_slashes:
  lookup_flags |= LOOKUP_FOLLOW | LOOKUP_DIRECTORY;
last_component:

  nd->flags &= lookup_flags | ~LOOKUP_CONTINUE;
  if (lookup_flags & LOOKUP_PARENT)
   goto lookup_parent;
  if (this.name[0] == '.') switch (this.len) {
   default:
    break;
   case 2:
    if (this.name[1] != '.')
     break;
    follow_dotdot(nd);
    inode = nd->path.dentry->d_inode;

   case 1:
    goto return_reval;
  }
  if (nd->path.dentry->d_op && nd->path.dentry->d_op->d_hash) {
   err = nd->path.dentry->d_op->d_hash(nd->path.dentry,
           &this);
   if (err < 0)
    break;
  }
  err = do_lookup(nd, &this, &next);
  if (err)
   break;
  inode = next.dentry->d_inode;
  if (follow_on_final(inode, lookup_flags)) {
   err = do_follow_link(&next, nd);
   if (err)
    goto return_err;
   inode = nd->path.dentry->d_inode;
  } else
   path_to_nameidata(&next, nd);
  err = -ENOENT;
  if (!inode)
   break;
  if (lookup_flags & LOOKUP_DIRECTORY) {
   err = -ENOTDIR;
   if (!inode->i_op->lookup)
    break;
  }
  goto return_base;
lookup_parent:
  nd->last = this;
  nd->last_type = LAST_NORM;
  if (this.name[0] != '.')
   goto return_base;
  if (this.len == 1)
   nd->last_type = LAST_DOT;
  else if (this.len == 2 && this.name[1] == '.')
   nd->last_type = LAST_DOTDOT;
  else
   goto return_base;
return_reval:




  if (nd->path.dentry && nd->path.dentry->d_sb) {
   int fs_flags = nd->path.dentry->d_sb->s_type->fs_flags;

   if (fs_flags & FS_REVAL_DOT) {
    err = -ESTALE;


    if (fs_flags & FS_WEAK_REVALIDATE) {
     if (!nd->path.dentry->d_op->d_weak_revalidate(nd->path.dentry, nd))
      break;
    } else {
     if (!nd->path.dentry->d_op->d_revalidate(nd->path.dentry, nd))
      break;
    }
   }
  }
return_base:
  return 0;
out_dput:
  path_put_conditional(&next, nd);
  break;
 }
 if (unlikely(!audit_dummy_context()) && nd->path.dentry->d_inode)
  audit_inode(filename, nd->path.dentry,
    nd->flags & LOOKUP_PARENT);
 path_put(&nd->path);
return_err:
 return err;
}
