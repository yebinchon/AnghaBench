
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_count; } ;


 int destroy_super (struct super_block*) ;

__attribute__((used)) static int __put_super(struct super_block *sb)
{
 int ret = 0;

 if (!--sb->s_count) {
  destroy_super(sb);
  ret = 1;
 }
 return ret;
}
