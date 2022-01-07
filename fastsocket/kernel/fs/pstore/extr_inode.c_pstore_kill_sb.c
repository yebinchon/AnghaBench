
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int kill_litter_super (struct super_block*) ;
 int * pstore_sb ;

__attribute__((used)) static void pstore_kill_sb(struct super_block *sb)
{
 kill_litter_super(sb);
 pstore_sb = ((void*)0);
}
