
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SOSSI_INIT3_REG ;
 int sossi_read_reg (int ) ;
 int sossi_write_reg (int ,int) ;

__attribute__((used)) static void _set_bits_per_cycle(int bus_pick_count, int bus_pick_width)
{
 u32 l;

 l = sossi_read_reg(SOSSI_INIT3_REG);
 l &= ~0x3ff;
 l |= ((bus_pick_count - 1) << 5) | ((bus_pick_width - 1) & 0x1f);
 sossi_write_reg(SOSSI_INIT3_REG, l);
}
