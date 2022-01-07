
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int superblock_free_security (struct super_block*) ;

__attribute__((used)) static void selinux_sb_free_security(struct super_block *sb)
{
 superblock_free_security(sb);
}
