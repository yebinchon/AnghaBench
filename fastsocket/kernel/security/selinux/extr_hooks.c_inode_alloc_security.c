
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_security_struct {int task_sid; int sclass; int sid; struct inode* inode; int list; int lock; } ;
struct inode {struct inode_security_struct* i_security; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int SECCLASS_FILE ;
 int SECINITSID_UNLABELED ;
 int current_sid () ;
 struct inode_security_struct* kmem_cache_zalloc (int ,int ) ;
 int mutex_init (int *) ;
 int sel_inode_cache ;

__attribute__((used)) static int inode_alloc_security(struct inode *inode)
{
 struct inode_security_struct *isec;
 u32 sid = current_sid();

 isec = kmem_cache_zalloc(sel_inode_cache, GFP_NOFS);
 if (!isec)
  return -ENOMEM;

 mutex_init(&isec->lock);
 INIT_LIST_HEAD(&isec->list);
 isec->inode = inode;
 isec->sid = SECINITSID_UNLABELED;
 isec->sclass = SECCLASS_FILE;
 isec->task_sid = sid;
 inode->i_security = isec;

 return 0;
}
