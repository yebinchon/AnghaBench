
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_count; int s_list; } ;


 int BUG_ON (int) ;
 int __put_super (struct super_block*) ;
 scalar_t__ list_empty (int *) ;

int __put_super_and_need_restart(struct super_block *sb)
{

 if (list_empty(&sb->s_list)) {

  __put_super(sb);
  return 1;
 }

 sb->s_count--;
 BUG_ON(sb->s_count == 0);
 return 0;
}
