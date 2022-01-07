
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bits_per_cycle; } ;


 int BUG () ;
 int RFBI_CONFIG0 ;
 TYPE_1__ rfbi ;
 int rfbi_enable_clocks (int) ;
 int rfbi_read_reg (int ) ;
 int rfbi_write_reg (int ,int) ;

__attribute__((used)) static void rfbi_set_bits_per_cycle(int bpc)
{
 u32 l;

 rfbi_enable_clocks(1);
 l = rfbi_read_reg(RFBI_CONFIG0);
 l &= ~(0x03 << 0);

 switch (bpc) {
 case 8:
  break;
 case 16:
  l |= 3;
  break;
 default:
  BUG();
 }
 rfbi_write_reg(RFBI_CONFIG0, l);
 rfbi.bits_per_cycle = bpc;
 rfbi_enable_clocks(0);
}
