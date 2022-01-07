
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; scalar_t__ s_root; int s_count; int s_instances; } ;


 scalar_t__ down_read_trylock (int *) ;
 scalar_t__ list_empty (int *) ;
 int put_super (struct super_block*) ;
 int sb_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

__attribute__((used)) static bool pin_sb_for_writeback(struct super_block *sb)
{
 spin_lock(&sb_lock);
 if (list_empty(&sb->s_instances)) {
  spin_unlock(&sb_lock);
  return 0;
 }

 sb->s_count++;
 spin_unlock(&sb_lock);

 if (down_read_trylock(&sb->s_umount)) {
  if (sb->s_root)
   return 1;
  up_read(&sb->s_umount);
 }

 put_super(sb);
 return 0;
}
