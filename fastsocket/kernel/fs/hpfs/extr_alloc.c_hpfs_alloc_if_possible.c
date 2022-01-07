
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int secno ;


 int hpfs_alloc_if_possible_nolock (struct super_block*,int ) ;
 int hpfs_lock_creation (struct super_block*) ;
 int hpfs_unlock_creation (struct super_block*) ;

int hpfs_alloc_if_possible(struct super_block *s, secno sec)
{
 int r;
 hpfs_lock_creation(s);
 r = hpfs_alloc_if_possible_nolock(s, sec);
 hpfs_unlock_creation(s);
 return r;
}
