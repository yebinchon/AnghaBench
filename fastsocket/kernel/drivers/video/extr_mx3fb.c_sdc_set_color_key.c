
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mx3fb_data {int lock; } ;
typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;


 int IDMAC_SDC_0 ;
 int SDC_COM_CONF ;
 int SDC_COM_GWSEL ;
 int SDC_COM_KEY_COLOR_G ;
 int SDC_GW_CTRL ;
 int mx3fb_read_reg (struct mx3fb_data*,int ) ;
 int mx3fb_write_reg (struct mx3fb_data*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sdc_set_color_key(struct mx3fb_data *mx3fb, enum ipu_channel channel,
        bool enable, uint32_t color_key)
{
 uint32_t reg, sdc_conf;
 unsigned long lock_flags;

 spin_lock_irqsave(&mx3fb->lock, lock_flags);

 sdc_conf = mx3fb_read_reg(mx3fb, SDC_COM_CONF);
 if (channel == IDMAC_SDC_0)
  sdc_conf &= ~SDC_COM_GWSEL;
 else
  sdc_conf |= SDC_COM_GWSEL;

 if (enable) {
  reg = mx3fb_read_reg(mx3fb, SDC_GW_CTRL) & 0xFF000000L;
  mx3fb_write_reg(mx3fb, reg | (color_key & 0x00FFFFFFL),
        SDC_GW_CTRL);

  sdc_conf |= SDC_COM_KEY_COLOR_G;
 } else {
  sdc_conf &= ~SDC_COM_KEY_COLOR_G;
 }
 mx3fb_write_reg(mx3fb, sdc_conf, SDC_COM_CONF);

 spin_unlock_irqrestore(&mx3fb->lock, lock_flags);

 return 0;
}
