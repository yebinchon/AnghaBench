
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int (* have_digit_io_switch ) (struct hw*) ;} ;
struct ct_atc {struct hw* hw; } ;


 int stub1 (struct hw*) ;

__attribute__((used)) static int atc_have_digit_io_switch(struct ct_atc *atc)
{
 struct hw *hw = atc->hw;

 return hw->have_digit_io_switch(hw);
}
