
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SOSSI_INIT2_REG ;
 int SOSSI_TEARING_REG ;
 int sossi_clear_bits (int ,int) ;
 int sossi_read_reg (int ) ;
 int sossi_set_bits (int ,int) ;
 int sossi_write_reg (int ,int) ;

__attribute__((used)) static void _set_tearsync_mode(int mode, unsigned line)
{
 u32 l;

 l = sossi_read_reg(SOSSI_TEARING_REG);
 l &= ~(((1 << 11) - 1) << 15);
 l |= line << 15;
 l &= ~(0x3 << 26);
 l |= mode << 26;
 sossi_write_reg(SOSSI_TEARING_REG, l);
 if (mode)
  sossi_set_bits(SOSSI_INIT2_REG, 1 << 6);
 else
  sossi_clear_bits(SOSSI_INIT2_REG, 1 << 6);
}
