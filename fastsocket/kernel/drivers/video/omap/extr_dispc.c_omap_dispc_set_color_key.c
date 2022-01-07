
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omapfb_color_key {int channel_out; int key_type; int background; int trans_key; } ;
struct TYPE_2__ {struct omapfb_color_key color_key; } ;


 int DISPC_CONFIG ;
 int DISPC_DEFAULT_COLOR0 ;
 int DISPC_DEFAULT_COLOR1 ;
 int DISPC_TRANS_COLOR0 ;
 int DISPC_TRANS_COLOR1 ;
 int EINVAL ;
 int FLD_MASK (int,int) ;
 int MOD_REG_FLD (int ,int ,int) ;





 TYPE_1__ dispc ;
 int dispc_write_reg (int ,int ) ;
 int enable_lcd_clocks (int) ;

__attribute__((used)) static int omap_dispc_set_color_key(struct omapfb_color_key *ck)
{
 u32 df_reg, tr_reg;
 int shift, val;

 switch (ck->channel_out) {
 case 131:
  df_reg = DISPC_DEFAULT_COLOR0;
  tr_reg = DISPC_TRANS_COLOR0;
  shift = 10;
  break;
 case 132:
  df_reg = DISPC_DEFAULT_COLOR1;
  tr_reg = DISPC_TRANS_COLOR1;
  shift = 12;
  break;
 default:
  return -EINVAL;
 }
 switch (ck->key_type) {
 case 130:
  val = 0;
  break;
 case 129:
  val = 1;
  break;
 case 128:
  val = 3;
  break;
 default:
  return -EINVAL;
 }
 enable_lcd_clocks(1);
 MOD_REG_FLD(DISPC_CONFIG, FLD_MASK(shift, 2), val << shift);

 if (val != 0)
  dispc_write_reg(tr_reg, ck->trans_key);
 dispc_write_reg(df_reg, ck->background);
 enable_lcd_clocks(0);

 dispc.color_key = *ck;

 return 0;
}
