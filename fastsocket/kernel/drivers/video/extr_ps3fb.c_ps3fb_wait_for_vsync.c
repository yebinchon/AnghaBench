
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ vblank_count; int wait_vsync; } ;


 int ETIMEDOUT ;
 int HZ ;
 TYPE_1__ ps3fb ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int ps3fb_wait_for_vsync(u32 crtc)
{
 int ret;
 u64 count;

 count = ps3fb.vblank_count;
 ret = wait_event_interruptible_timeout(ps3fb.wait_vsync,
            count != ps3fb.vblank_count,
            HZ / 10);
 if (!ret)
  return -ETIMEDOUT;

 return 0;
}
