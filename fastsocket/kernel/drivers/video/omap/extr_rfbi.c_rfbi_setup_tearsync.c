
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned int tearsync_pin_cnt; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int EDOM ;
 int EINVAL ;
 int RFBI_CONFIG0 ;
 int RFBI_HSYNC_WIDTH ;
 int RFBI_VSYNC_WIDTH ;
 int dev_dbg (int ,char*,unsigned int,int,int,int,int) ;
 int ps_to_rfbi_ticks (unsigned int,int) ;
 TYPE_2__ rfbi ;
 int rfbi_enable_clocks (int) ;
 int rfbi_read_reg (int ) ;
 int rfbi_write_reg (int ,int) ;

__attribute__((used)) static int rfbi_setup_tearsync(unsigned pin_cnt,
          unsigned hs_pulse_time, unsigned vs_pulse_time,
          int hs_pol_inv, int vs_pol_inv, int extif_div)
{
 int hs, vs;
 int min;
 u32 l;

 if (pin_cnt != 1 && pin_cnt != 2)
  return -EINVAL;

 hs = ps_to_rfbi_ticks(hs_pulse_time, 1);
 vs = ps_to_rfbi_ticks(vs_pulse_time, 1);
 if (hs < 2)
  return -EDOM;
 if (pin_cnt == 2)
  min = 2;
 else
  min = 4;
 if (vs < min)
  return -EDOM;
 if (vs == hs)
  return -EINVAL;
 rfbi.tearsync_pin_cnt = pin_cnt;
 dev_dbg(rfbi.fbdev->dev,
  "setup_tearsync: pins %d hs %d vs %d hs_inv %d vs_inv %d\n",
  pin_cnt, hs, vs, hs_pol_inv, vs_pol_inv);

 rfbi_enable_clocks(1);
 rfbi_write_reg(RFBI_HSYNC_WIDTH, hs);
 rfbi_write_reg(RFBI_VSYNC_WIDTH, vs);

 l = rfbi_read_reg(RFBI_CONFIG0);
 if (hs_pol_inv)
  l &= ~(1 << 21);
 else
  l |= 1 << 21;
 if (vs_pol_inv)
  l &= ~(1 << 20);
 else
  l |= 1 << 20;
 rfbi_enable_clocks(0);

 return 0;
}
