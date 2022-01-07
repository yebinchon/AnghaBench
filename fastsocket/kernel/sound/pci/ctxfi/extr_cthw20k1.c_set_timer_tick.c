
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int TIMR ;
 unsigned int TIMR_IE ;
 unsigned int TIMR_IP ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;

__attribute__((used)) static int set_timer_tick(struct hw *hw, unsigned int ticks)
{
 if (ticks)
  ticks |= TIMR_IE | TIMR_IP;
 hw_write_20kx(hw, TIMR, ticks);
 return 0;
}
