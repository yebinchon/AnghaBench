
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int generic_shutdown_super (struct super_block*) ;

__attribute__((used)) static void ecryptfs_kill_block_super(struct super_block *sb)
{
 generic_shutdown_super(sb);
}
