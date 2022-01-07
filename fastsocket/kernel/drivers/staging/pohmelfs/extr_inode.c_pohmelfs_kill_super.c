
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int kill_anon_super (struct super_block*) ;
 int sync_inodes_sb (struct super_block*) ;

__attribute__((used)) static void pohmelfs_kill_super(struct super_block *sb)
{
 sync_inodes_sb(sb);
 kill_anon_super(sb);
}
