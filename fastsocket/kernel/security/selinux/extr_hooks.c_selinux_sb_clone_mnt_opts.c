
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct superblock_security_struct {int flags; int lock; void* mntpoint_sid; void* sid; int behavior; int def_sid; int list; } ;
struct super_block {TYPE_1__* s_root; struct superblock_security_struct* s_security; } ;
struct inode_security_struct {void* sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int BUG_ON (int) ;
 int CONTEXT_MNT ;
 int FSCONTEXT_MNT ;
 int ROOTCONTEXT_MNT ;
 int SE_SBINITIALIZED ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sb_finish_set_opts (struct super_block*) ;
 int sb_security_lock ;
 int selinux_cmp_sb_context (struct super_block const*,struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ss_initialized ;
 int superblock_security_head ;

__attribute__((used)) static int selinux_sb_clone_mnt_opts(const struct super_block *oldsb,
     struct super_block *newsb)
{
 const struct superblock_security_struct *oldsbsec = oldsb->s_security;
 struct superblock_security_struct *newsbsec = newsb->s_security;

 int set_fscontext = (oldsbsec->flags & FSCONTEXT_MNT);
 int set_context = (oldsbsec->flags & CONTEXT_MNT);
 int set_rootcontext = (oldsbsec->flags & ROOTCONTEXT_MNT);






 if (!ss_initialized) {
  spin_lock(&sb_security_lock);
  if (list_empty(&newsbsec->list))
   list_add(&newsbsec->list, &superblock_security_head);
  spin_unlock(&sb_security_lock);
  return 0;
 }


 BUG_ON(!(oldsbsec->flags & SE_SBINITIALIZED));


 if (newsbsec->flags & SE_SBINITIALIZED)
  return selinux_cmp_sb_context(oldsb, newsb);

 mutex_lock(&newsbsec->lock);

 newsbsec->flags = oldsbsec->flags;

 newsbsec->sid = oldsbsec->sid;
 newsbsec->def_sid = oldsbsec->def_sid;
 newsbsec->behavior = oldsbsec->behavior;

 if (set_context) {
  u32 sid = oldsbsec->mntpoint_sid;

  if (!set_fscontext)
   newsbsec->sid = sid;
  if (!set_rootcontext) {
   struct inode *newinode = newsb->s_root->d_inode;
   struct inode_security_struct *newisec = newinode->i_security;
   newisec->sid = sid;
  }
  newsbsec->mntpoint_sid = sid;
 }
 if (set_rootcontext) {
  const struct inode *oldinode = oldsb->s_root->d_inode;
  const struct inode_security_struct *oldisec = oldinode->i_security;
  struct inode *newinode = newsb->s_root->d_inode;
  struct inode_security_struct *newisec = newinode->i_security;

  newisec->sid = oldisec->sid;
 }

 sb_finish_set_opts(newsb);
 mutex_unlock(&newsbsec->lock);
 return 0;
}
