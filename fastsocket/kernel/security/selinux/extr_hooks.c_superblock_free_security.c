
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_security_struct {int list; } ;
struct super_block {struct superblock_security_struct* s_security; } ;


 int kfree (struct superblock_security_struct*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int sb_security_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void superblock_free_security(struct super_block *sb)
{
 struct superblock_security_struct *sbsec = sb->s_security;

 spin_lock(&sb_security_lock);
 if (!list_empty(&sbsec->list))
  list_del_init(&sbsec->list);
 spin_unlock(&sb_security_lock);

 sb->s_security = ((void*)0);
 kfree(sbsec);
}
