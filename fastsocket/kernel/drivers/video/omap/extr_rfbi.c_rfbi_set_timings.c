
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extif_timings {int* tim; int converted; } ;


 int BUG_ON (int) ;
 int RFBI_CONFIG0 ;
 int RFBI_CYCLE_TIME0 ;
 int RFBI_ONOFF_TIME0 ;
 int rfbi_enable_clocks (int) ;
 int rfbi_print_timings () ;
 int rfbi_read_reg (int ) ;
 int rfbi_write_reg (int ,int) ;

__attribute__((used)) static void rfbi_set_timings(const struct extif_timings *t)
{
 u32 l;

 BUG_ON(!t->converted);

 rfbi_enable_clocks(1);
 rfbi_write_reg(RFBI_ONOFF_TIME0, t->tim[0]);
 rfbi_write_reg(RFBI_CYCLE_TIME0, t->tim[1]);

 l = rfbi_read_reg(RFBI_CONFIG0);
 l &= ~(1 << 4);
 l |= (t->tim[2] ? 1 : 0) << 4;
 rfbi_write_reg(RFBI_CONFIG0, l);

 rfbi_print_timings();
 rfbi_enable_clocks(0);
}
