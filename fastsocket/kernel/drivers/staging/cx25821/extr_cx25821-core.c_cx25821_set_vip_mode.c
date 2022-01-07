
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_channel {int vip_ctl; int pix_frmt; } ;
struct cx25821_dev {int dummy; } ;


 int PIXEL_ENGINE_VIP1 ;
 int PIXEL_FRMT_422 ;
 int cx_write (int ,int ) ;

__attribute__((used)) static void cx25821_set_vip_mode(struct cx25821_dev *dev,
     struct sram_channel *ch)
{
 cx_write(ch->pix_frmt, PIXEL_FRMT_422);
 cx_write(ch->vip_ctl, PIXEL_ENGINE_VIP1);
}
