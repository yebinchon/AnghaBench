
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_4__ {scalar_t__ len; int name; } ;
struct dentry {struct autofs_info* d_fsdata; int d_parent; int * d_op; TYPE_1__ d_name; } ;
struct autofs_sb_info {int type; int catatonic; } ;
struct autofs_info {struct dentry* dentry; } ;
struct TYPE_5__ {int pid; } ;


 int DPRINTK (char*,scalar_t__,int ,...) ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ROOT (int ) ;
 scalar_t__ NAME_MAX ;
 int __managed_dentry_set_managed (struct dentry*) ;
 int autofs4_add_active (struct dentry*) ;
 int autofs4_dentry_operations ;
 struct autofs_info* autofs4_init_ino (int *,struct autofs_sb_info*,int) ;
 struct dentry* autofs4_lookup_active (struct dentry*) ;
 int autofs4_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 scalar_t__ autofs_type_indirect (int ) ;
 TYPE_2__* current ;
 int d_instantiate (struct dentry*,int *) ;
 int task_pgrp_nr (TYPE_2__*) ;

__attribute__((used)) static struct dentry *autofs4_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 struct autofs_sb_info *sbi;
 struct autofs_info *ino;
 struct dentry *active;

 DPRINTK("name = %.*s", dentry->d_name.len, dentry->d_name.name);


 if (dentry->d_name.len > NAME_MAX)
  return ERR_PTR(-ENAMETOOLONG);

 sbi = autofs4_sbi(dir->i_sb);

 DPRINTK("pid = %u, pgrp = %u, catatonic = %d",
   current->pid, task_pgrp_nr(current), sbi->catatonic);

 active = autofs4_lookup_active(dentry);
 if (active)
  return active;
 else {
  dentry->d_op = &autofs4_dentry_operations;







  if (!autofs4_oz_mode(sbi) && !IS_ROOT(dentry->d_parent))
   return ERR_PTR(-ENOENT);


  if (autofs_type_indirect(sbi->type) && IS_ROOT(dentry->d_parent))
   __managed_dentry_set_managed(dentry);

  ino = autofs4_init_ino(((void*)0), sbi, 0555);
  if (!ino)
   return ERR_PTR(-ENOMEM);

  dentry->d_fsdata = ino;
  ino->dentry = dentry;

  autofs4_add_active(dentry);

  d_instantiate(dentry, ((void*)0));
 }

 return ((void*)0);
}
