
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct superblock_smack {char* smk_default; char* smk_root; } ;
struct super_block {int s_magic; struct superblock_smack* s_security; } ;
struct inode_smack {int smk_flags; char* smk_inode; int smk_lock; } ;
struct inode {TYPE_1__* i_op; struct super_block* i_sb; struct inode_smack* i_security; } ;
struct dentry {struct dentry* d_parent; } ;
struct TYPE_4__ {char* smk_known; } ;
struct TYPE_3__ {int * getxattr; } ;






 int SMK_INODE_INSTANT ;


 char* current_security () ;
 struct dentry* d_find_alias (struct inode*) ;
 struct dentry* dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__ smack_known_star ;
 char* smk_fetch (struct inode*,struct dentry*) ;

__attribute__((used)) static void smack_d_instantiate(struct dentry *opt_dentry, struct inode *inode)
{
 struct super_block *sbp;
 struct superblock_smack *sbsp;
 struct inode_smack *isp;
 char *csp = current_security();
 char *fetched;
 char *final;
 struct dentry *dp;

 if (inode == ((void*)0))
  return;

 isp = inode->i_security;

 mutex_lock(&isp->smk_lock);




 if (isp->smk_flags & SMK_INODE_INSTANT)
  goto unlockandout;

 sbp = inode->i_sb;
 sbsp = sbp->s_security;




 final = sbsp->smk_default;







 if (opt_dentry->d_parent == opt_dentry) {
  isp->smk_inode = sbsp->smk_root;
  isp->smk_flags |= SMK_INODE_INSTANT;
  goto unlockandout;
 }







 switch (sbp->s_magic) {
 case 130:





  final = smack_known_star.smk_known;
  break;
 case 132:



  final = smack_known_star.smk_known;
  break;
 case 133:





  final = csp;
  break;
 case 129:



  final = csp;
  break;
 case 131:




  break;
 case 128:





  final = smack_known_star.smk_known;
 default:
  if (inode->i_op->getxattr == ((void*)0))
   break;



  if (opt_dentry == ((void*)0)) {
   dp = d_find_alias(inode);
   if (dp == ((void*)0))
    break;
  } else {
   dp = dget(opt_dentry);
   if (dp == ((void*)0))
    break;
  }

  fetched = smk_fetch(inode, dp);
  if (fetched != ((void*)0))
   final = fetched;

  dput(dp);
  break;
 }

 if (final == ((void*)0))
  isp->smk_inode = csp;
 else
  isp->smk_inode = final;

 isp->smk_flags |= SMK_INODE_INSTANT;

unlockandout:
 mutex_unlock(&isp->smk_lock);
 return;
}
