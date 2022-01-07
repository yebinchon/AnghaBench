
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {scalar_t__ model; } ;


 scalar_t__ CTSB073X ;
 scalar_t__ CTUAA ;

__attribute__((used)) static int hw_have_digit_io_switch(struct hw *hw)
{

 return !(hw->model == CTSB073X || hw->model == CTUAA);
}
