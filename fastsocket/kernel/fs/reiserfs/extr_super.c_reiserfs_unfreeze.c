
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int reiserfs_allow_writes (struct super_block*) ;

__attribute__((used)) static int reiserfs_unfreeze(struct super_block *s)
{
 reiserfs_allow_writes(s);
 return 0;
}
