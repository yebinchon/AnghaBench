
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {unsigned int i_ino; int * i_fop; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int d_sb; } ;


 unsigned int ARRAY_SIZE (char**) ;
 int ENOMEM ;
 unsigned int POLICYDB_CAPABILITY_MAX ;
 unsigned int SEL_POLICYCAP_INO_OFFSET ;
 int S_IFREG ;
 int S_IRUGO ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (TYPE_1__*,char*) ;
 TYPE_1__* policycap_dir ;
 char** policycap_names ;
 struct inode* sel_make_inode (int ,int) ;
 int sel_policycap_ops ;
 int sel_remove_entries (TYPE_1__*) ;

__attribute__((used)) static int sel_make_policycap(void)
{
 unsigned int iter;
 struct dentry *dentry = ((void*)0);
 struct inode *inode = ((void*)0);

 sel_remove_entries(policycap_dir);

 for (iter = 0; iter <= POLICYDB_CAPABILITY_MAX; iter++) {
  if (iter < ARRAY_SIZE(policycap_names))
   dentry = d_alloc_name(policycap_dir,
           policycap_names[iter]);
  else
   dentry = d_alloc_name(policycap_dir, "unknown");

  if (dentry == ((void*)0))
   return -ENOMEM;

  inode = sel_make_inode(policycap_dir->d_sb, S_IFREG | S_IRUGO);
  if (inode == ((void*)0))
   return -ENOMEM;

  inode->i_fop = &sel_policycap_ops;
  inode->i_ino = iter | SEL_POLICYCAP_INO_OFFSET;
  d_add(dentry, inode);
 }

 return 0;
}
