
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_smack {int smk_initialized; char* smk_hat; char* smk_floor; char* smk_default; char* smk_root; int smk_sblock; } ;
struct super_block {struct superblock_smack* s_security; struct dentry* s_root; } ;
struct inode_smack {char* smk_inode; } ;
struct inode {struct inode_smack* i_security; } ;
struct dentry {struct inode* d_inode; } ;


 int SMK_FSDEFAULT ;
 int SMK_FSFLOOR ;
 int SMK_FSHAT ;
 int SMK_FSROOT ;
 struct inode_smack* new_inode_smack (char*) ;
 char* smk_import (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 char* strchr (char*,char) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;

__attribute__((used)) static int smack_sb_kern_mount(struct super_block *sb, int flags, void *data)
{
 struct dentry *root = sb->s_root;
 struct inode *inode = root->d_inode;
 struct superblock_smack *sp = sb->s_security;
 struct inode_smack *isp;
 char *op;
 char *commap;
 char *nsp;

 spin_lock(&sp->smk_sblock);
 if (sp->smk_initialized != 0) {
  spin_unlock(&sp->smk_sblock);
  return 0;
 }
 sp->smk_initialized = 1;
 spin_unlock(&sp->smk_sblock);

 for (op = data; op != ((void*)0); op = commap) {
  commap = strchr(op, ',');
  if (commap != ((void*)0))
   *commap++ = '\0';

  if (strncmp(op, SMK_FSHAT, strlen(SMK_FSHAT)) == 0) {
   op += strlen(SMK_FSHAT);
   nsp = smk_import(op, 0);
   if (nsp != ((void*)0))
    sp->smk_hat = nsp;
  } else if (strncmp(op, SMK_FSFLOOR, strlen(SMK_FSFLOOR)) == 0) {
   op += strlen(SMK_FSFLOOR);
   nsp = smk_import(op, 0);
   if (nsp != ((void*)0))
    sp->smk_floor = nsp;
  } else if (strncmp(op, SMK_FSDEFAULT,
       strlen(SMK_FSDEFAULT)) == 0) {
   op += strlen(SMK_FSDEFAULT);
   nsp = smk_import(op, 0);
   if (nsp != ((void*)0))
    sp->smk_default = nsp;
  } else if (strncmp(op, SMK_FSROOT, strlen(SMK_FSROOT)) == 0) {
   op += strlen(SMK_FSROOT);
   nsp = smk_import(op, 0);
   if (nsp != ((void*)0))
    sp->smk_root = nsp;
  }
 }




 isp = inode->i_security;
 if (isp == ((void*)0))
  inode->i_security = new_inode_smack(sp->smk_root);
 else
  isp->smk_inode = sp->smk_root;

 return 0;
}
