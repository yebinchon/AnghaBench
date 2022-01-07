
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct superblock_security_struct {int isec_lock; } ;
struct inode_security_struct {int list; } ;
struct inode {struct inode_security_struct* i_security; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct superblock_security_struct* s_security; } ;


 int kmem_cache_free (int ,struct inode_security_struct*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int sel_inode_cache ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void inode_free_security(struct inode *inode)
{
 struct inode_security_struct *isec = inode->i_security;
 struct superblock_security_struct *sbsec = inode->i_sb->s_security;

 spin_lock(&sbsec->isec_lock);
 if (!list_empty(&isec->list))
  list_del_init(&isec->list);
 spin_unlock(&sbsec->isec_lock);

 inode->i_security = ((void*)0);
 kmem_cache_free(sel_inode_cache, isec);
}
