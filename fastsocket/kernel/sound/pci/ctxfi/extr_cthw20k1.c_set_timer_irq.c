
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int GIE ;
 int IT_INT ;
 int hw_write_20kx (struct hw*,int ,int ) ;

__attribute__((used)) static int set_timer_irq(struct hw *hw, int enable)
{
 hw_write_20kx(hw, GIE, enable ? IT_INT : 0);
 return 0;
}
