
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int wait; scalar_t__ pan_display; int count; } ;
struct TYPE_3__ {int off_pitch; } ;
struct atyfb_par {int int_lock; TYPE_2__ vblank; TYPE_1__ crtc; } ;
typedef int irqreturn_t ;


 int CRTC_INT_CNTL ;
 int CRTC_INT_EN_MASK ;
 int CRTC_OFF_PITCH ;
 int CRTC_VBLANK_INT ;
 int CRTC_VBLANK_INT_AK ;
 int IRQ_RETVAL (int) ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t aty_irq(int irq, void *dev_id)
{
 struct atyfb_par *par = dev_id;
 int handled = 0;
 u32 int_cntl;

 spin_lock(&par->int_lock);

 int_cntl = aty_ld_le32(CRTC_INT_CNTL, par);

 if (int_cntl & CRTC_VBLANK_INT) {

  aty_st_le32(CRTC_INT_CNTL, (int_cntl & CRTC_INT_EN_MASK) |
       CRTC_VBLANK_INT_AK, par);
  par->vblank.count++;
  if (par->vblank.pan_display) {
   par->vblank.pan_display = 0;
   aty_st_le32(CRTC_OFF_PITCH, par->crtc.off_pitch, par);
  }
  wake_up_interruptible(&par->vblank.wait);
  handled = 1;
 }

 spin_unlock(&par->int_lock);

 return IRQ_RETVAL(handled);
}
