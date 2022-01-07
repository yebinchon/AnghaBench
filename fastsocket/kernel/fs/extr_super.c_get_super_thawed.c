
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ frozen; int wait_unfrozen; } ;
struct super_block {scalar_t__ s_frozen; int s_umount; TYPE_1__ s_writers; } ;
struct block_device {int dummy; } ;


 int SB_FREEZE_WRITE ;
 scalar_t__ SB_UNFROZEN ;
 struct super_block* get_super (struct block_device*) ;
 scalar_t__ likely (int ) ;
 int put_super (struct super_block*) ;
 int sb_has_new_freeze (struct super_block*) ;
 int up_read (int *) ;
 int vfs_check_frozen (struct super_block*,int ) ;
 int wait_event (int ,int) ;

struct super_block *get_super_thawed(struct block_device *bdev)
{
 while (1) {
  struct super_block *s = get_super(bdev);

  if (!s)
   return s;

  if (likely(sb_has_new_freeze(s))) {
   if (s->s_writers.frozen == SB_UNFROZEN)
    return s;
   up_read(&s->s_umount);
   wait_event(s->s_writers.wait_unfrozen,
       s->s_writers.frozen == SB_UNFROZEN);
  } else {

   if (s->s_frozen == SB_UNFROZEN)
    return s;
   up_read(&s->s_umount);
   vfs_check_frozen(s, SB_FREEZE_WRITE);
  }
  put_super(s);
 }
}
