
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regs_cs4382 {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; int member_10; int member_11; int member_12; int member_13; int member_14; int member_15; int member_16; int vol_control_B4; int vol_control_A4; int mix_control_P4; int vol_control_B3; int vol_control_A3; int mix_control_P3; int vol_control_B2; int vol_control_A2; int mix_control_P2; int vol_control_B1; int vol_control_A1; int mix_control_P1; int invert_control; int filter_control; int mode_control_3; int mode_control_2; int mode_control_1; } ;
struct hw {int dummy; } ;
struct dac_conf {int msr; } ;
typedef int cs_read ;


 int CS4382_FC ;
 int CS4382_IC ;
 int CS4382_MC1 ;
 int CS4382_MC2 ;
 int CS4382_MC3 ;
 int CS4382_VCA1 ;
 int CS4382_VCA2 ;
 int CS4382_VCA3 ;
 int CS4382_VCA4 ;
 int CS4382_VCB1 ;
 int CS4382_VCB2 ;
 int CS4382_VCB3 ;
 int CS4382_VCB4 ;
 int CS4382_XC1 ;
 int CS4382_XC2 ;
 int CS4382_XC3 ;
 int CS4382_XC4 ;
 int GPIO_CTRL ;
 int GPIO_DATA ;
 int hw20k2_i2c_init (struct hw*,int,int,int) ;
 scalar_t__ hw20k2_i2c_read (struct hw*,int ,int *) ;
 int hw20k2_i2c_uninit (struct hw*) ;
 int hw20k2_i2c_write (struct hw*,int ,int) ;
 int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int mdelay (int) ;
 scalar_t__ memcmp (struct regs_cs4382*,struct regs_cs4382*,int) ;

__attribute__((used)) static int hw_dac_init(struct hw *hw, const struct dac_conf *info)
{
 int err;
 u32 data;
 int i;
 struct regs_cs4382 cs_read = {0};
 struct regs_cs4382 cs_def = {
       0x00000001,
       0x00000000,
       0x00000084,
       0x00000000,
       0x00000000,
       0x00000024,
       0x00000000,
       0x00000000,
       0x00000024,
       0x00000000,
       0x00000000,
       0x00000024,
       0x00000000,
       0x00000000,
       0x00000024,
       0x00000000,
       0x00000000
     };


 data = hw_read_20kx(hw, GPIO_CTRL);
 data |= 0x02;
 hw_write_20kx(hw, GPIO_CTRL, data);

 err = hw20k2_i2c_init(hw, 0x18, 1, 1);
 if (err < 0)
  goto End;

 for (i = 0; i < 2; i++) {


  data = hw_read_20kx(hw, GPIO_DATA);

  data &= 0xFFFFFFFD;
  hw_write_20kx(hw, GPIO_DATA, data);
  mdelay(10);
  data |= 0x2;
  hw_write_20kx(hw, GPIO_DATA, data);
  mdelay(50);


  data &= 0xFFFFFFFD;
  hw_write_20kx(hw, GPIO_DATA, data);
  mdelay(10);
  data |= 0x2;
  hw_write_20kx(hw, GPIO_DATA, data);
  mdelay(50);

  if (hw20k2_i2c_read(hw, CS4382_MC1, &cs_read.mode_control_1))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_MC2, &cs_read.mode_control_2))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_MC3, &cs_read.mode_control_3))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_FC, &cs_read.filter_control))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_IC, &cs_read.invert_control))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_XC1, &cs_read.mix_control_P1))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_VCA1, &cs_read.vol_control_A1))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_VCB1, &cs_read.vol_control_B1))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_XC2, &cs_read.mix_control_P2))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_VCA2, &cs_read.vol_control_A2))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_VCB2, &cs_read.vol_control_B2))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_XC3, &cs_read.mix_control_P3))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_VCA3, &cs_read.vol_control_A3))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_VCB3, &cs_read.vol_control_B3))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_XC4, &cs_read.mix_control_P4))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_VCA4, &cs_read.vol_control_A4))
   continue;

  if (hw20k2_i2c_read(hw, CS4382_VCB4, &cs_read.vol_control_B4))
   continue;

  if (memcmp(&cs_read, &cs_def, sizeof(cs_read)))
   continue;
  else
   break;
 }

 if (i >= 2)
  goto End;



 hw20k2_i2c_write(hw, CS4382_MC1, 0x80);
 hw20k2_i2c_write(hw, CS4382_MC2, 0x10);
 if (1 == info->msr) {
  hw20k2_i2c_write(hw, CS4382_XC1, 0x24);
  hw20k2_i2c_write(hw, CS4382_XC2, 0x24);
  hw20k2_i2c_write(hw, CS4382_XC3, 0x24);
  hw20k2_i2c_write(hw, CS4382_XC4, 0x24);
 } else if (2 == info->msr) {
  hw20k2_i2c_write(hw, CS4382_XC1, 0x25);
  hw20k2_i2c_write(hw, CS4382_XC2, 0x25);
  hw20k2_i2c_write(hw, CS4382_XC3, 0x25);
  hw20k2_i2c_write(hw, CS4382_XC4, 0x25);
 } else {
  hw20k2_i2c_write(hw, CS4382_XC1, 0x26);
  hw20k2_i2c_write(hw, CS4382_XC2, 0x26);
  hw20k2_i2c_write(hw, CS4382_XC3, 0x26);
  hw20k2_i2c_write(hw, CS4382_XC4, 0x26);
 }

 return 0;
End:

 hw20k2_i2c_uninit(hw);
 return -1;
}
