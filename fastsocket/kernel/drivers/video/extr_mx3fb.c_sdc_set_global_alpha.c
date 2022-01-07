
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct mx3fb_data {int lock; } ;


 int SDC_COM_CONF ;
 int SDC_COM_GLB_A ;
 int SDC_GW_CTRL ;
 int mx3fb_read_reg (struct mx3fb_data*,int ) ;
 int mx3fb_write_reg (struct mx3fb_data*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sdc_set_global_alpha(struct mx3fb_data *mx3fb, bool enable, uint8_t alpha)
{
 uint32_t reg;
 unsigned long lock_flags;

 spin_lock_irqsave(&mx3fb->lock, lock_flags);

 if (enable) {
  reg = mx3fb_read_reg(mx3fb, SDC_GW_CTRL) & 0x00FFFFFFL;
  mx3fb_write_reg(mx3fb, reg | ((uint32_t) alpha << 24), SDC_GW_CTRL);

  reg = mx3fb_read_reg(mx3fb, SDC_COM_CONF);
  mx3fb_write_reg(mx3fb, reg | SDC_COM_GLB_A, SDC_COM_CONF);
 } else {
  reg = mx3fb_read_reg(mx3fb, SDC_COM_CONF);
  mx3fb_write_reg(mx3fb, reg & ~SDC_COM_GLB_A, SDC_COM_CONF);
 }

 spin_unlock_irqrestore(&mx3fb->lock, lock_flags);

 return 0;
}
