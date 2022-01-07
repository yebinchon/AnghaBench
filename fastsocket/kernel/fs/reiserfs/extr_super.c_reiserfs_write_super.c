
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int reiserfs_sync_fs (struct super_block*,int) ;

__attribute__((used)) static void reiserfs_write_super(struct super_block *s)
{
 reiserfs_sync_fs(s, 1);
}
