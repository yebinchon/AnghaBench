
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int superblock_alloc_security (struct super_block*) ;

__attribute__((used)) static int selinux_sb_alloc_security(struct super_block *sb)
{
 return superblock_alloc_security(sb);
}
