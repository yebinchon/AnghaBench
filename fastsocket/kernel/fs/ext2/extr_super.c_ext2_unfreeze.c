
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int ext2_write_super (struct super_block*) ;

__attribute__((used)) static int ext2_unfreeze(struct super_block *sb)
{

 ext2_write_super(sb);

 return 0;
}
