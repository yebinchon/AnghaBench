
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int kill_litter_super (struct super_block*) ;
 int put_dev (int *) ;
 int * the_device ;

__attribute__((used)) static void
gadgetfs_kill_sb (struct super_block *sb)
{
 kill_litter_super (sb);
 if (the_device) {
  put_dev (the_device);
  the_device = ((void*)0);
 }
}
