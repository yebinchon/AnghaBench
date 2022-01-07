
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_dirt; } ;


 int affs_commit_super (struct super_block*,int) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static int
affs_sync_fs(struct super_block *sb, int wait)
{
 lock_super(sb);
 affs_commit_super(sb, 2);
 sb->s_dirt = 0;
 unlock_super(sb);
 return 0;
}
