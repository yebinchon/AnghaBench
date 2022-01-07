
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ jiffies ;
 scalar_t__ laptop_mode ;
 int laptop_mode_wb_timer ;
 int mod_timer (int *,scalar_t__) ;

void laptop_io_completion(void)
{
 mod_timer(&laptop_mode_wb_timer, jiffies + laptop_mode);
}
