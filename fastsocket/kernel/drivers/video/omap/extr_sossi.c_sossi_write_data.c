
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fck; int bus_pick_width; int bus_pick_count; } ;


 int SOSSI_INIT1_REG ;
 int WR_ACCESS ;
 int _set_bits_per_cycle (int ,int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int send_data (void const*,unsigned int) ;
 int set_cycles (unsigned int) ;
 int set_timing (int ) ;
 TYPE_1__ sossi ;
 int sossi_set_bits (int ,int) ;
 int sossi_start_transfer () ;
 int sossi_stop_transfer () ;
 int wait_end_of_write () ;

__attribute__((used)) static void sossi_write_data(const void *data, unsigned int len)
{
 clk_enable(sossi.fck);
 set_timing(WR_ACCESS);
 _set_bits_per_cycle(sossi.bus_pick_count, sossi.bus_pick_width);

 sossi_set_bits(SOSSI_INIT1_REG, 1 << 18);
 set_cycles(len);
 sossi_start_transfer();
 send_data(data, len);
 sossi_stop_transfer();
 wait_end_of_write();
 clk_disable(sossi.fck);
}
