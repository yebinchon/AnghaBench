
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {int ext_flip; int f_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 TYPE_1__ ps3fb ;
 int ps3fb_sync (struct fb_info*,int ) ;
 int release_console_sem () ;
 int try_acquire_console_sem () ;

__attribute__((used)) static int ps3fb_release(struct fb_info *info, int user)
{
 if (atomic_dec_and_test(&ps3fb.f_count)) {
  if (atomic_read(&ps3fb.ext_flip)) {
   atomic_set(&ps3fb.ext_flip, 0);
   if (!try_acquire_console_sem()) {
    ps3fb_sync(info, 0);
    release_console_sem();
   }
  }
 }
 return 0;
}
