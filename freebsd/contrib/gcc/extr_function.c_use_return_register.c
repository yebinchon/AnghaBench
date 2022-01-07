
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diddle_return_value (int ,int *) ;
 int do_use_return_reg ;

__attribute__((used)) static void
use_return_register (void)
{
  diddle_return_value (do_use_return_reg, ((void*)0));
}
