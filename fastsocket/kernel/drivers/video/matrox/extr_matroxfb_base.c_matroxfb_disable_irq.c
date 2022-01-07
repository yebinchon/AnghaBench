
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ accelerator; } ;
struct matrox_fb_info {TYPE_2__* pcidev; TYPE_1__ devflags; int irq_flags; } ;
struct TYPE_4__ {int irq; } ;


 scalar_t__ FB_ACCEL_MATROX_MGAG400 ;
 int M_IEN ;
 int free_irq (int ,struct matrox_fb_info*) ;
 int matroxfb_crtc1_panpos (struct matrox_fb_info*) ;
 int mga_inl (int ) ;
 int mga_outl (int ,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void matroxfb_disable_irq(struct matrox_fb_info *minfo)
{
 if (test_and_clear_bit(0, &minfo->irq_flags)) {

  matroxfb_crtc1_panpos(minfo);
  if (minfo->devflags.accelerator == FB_ACCEL_MATROX_MGAG400)
   mga_outl(M_IEN, mga_inl(M_IEN) & ~0x220);
  else
   mga_outl(M_IEN, mga_inl(M_IEN) & ~0x20);
  free_irq(minfo->pcidev->irq, minfo);
 }
}
