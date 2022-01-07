
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct matrox_vsync {unsigned int cnt; int wait; } ;
struct TYPE_4__ {struct matrox_vsync vsync; } ;
struct TYPE_6__ {int accelerator; } ;
struct TYPE_5__ {struct matrox_vsync vsync; } ;
struct matrox_fb_info {TYPE_1__ crtc2; TYPE_3__ devflags; TYPE_2__ crtc1; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int FB_ACCEL_MATROX_MGAG400 ;
 int HZ ;
 int matroxfb_enable_irq (struct matrox_fb_info*,int) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

int matroxfb_wait_for_sync(struct matrox_fb_info *minfo, u_int32_t crtc)
{
 struct matrox_vsync *vs;
 unsigned int cnt;
 int ret;

 switch (crtc) {
  case 0:
   vs = &minfo->crtc1.vsync;
   break;
  case 1:
   if (minfo->devflags.accelerator != FB_ACCEL_MATROX_MGAG400) {
    return -ENODEV;
   }
   vs = &minfo->crtc2.vsync;
   break;
  default:
   return -ENODEV;
 }
 ret = matroxfb_enable_irq(minfo, 0);
 if (ret) {
  return ret;
 }

 cnt = vs->cnt;
 ret = wait_event_interruptible_timeout(vs->wait, cnt != vs->cnt, HZ/10);
 if (ret < 0) {
  return ret;
 }
 if (ret == 0) {
  matroxfb_enable_irq(minfo, 1);
  return -ETIMEDOUT;
 }
 return 0;
}
