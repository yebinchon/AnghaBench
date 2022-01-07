
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_dirt; } ;


 int fat_clusters_flush (struct super_block*) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static int fat_sync_fs(struct super_block *sb, int wait)
{
 int err = 0;

 if (sb->s_dirt) {
  lock_super(sb);
  sb->s_dirt = 0;
  err = fat_clusters_flush(sb);
  unlock_super(sb);
 }

 return err;
}
