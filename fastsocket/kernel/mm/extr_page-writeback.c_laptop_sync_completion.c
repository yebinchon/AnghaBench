
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer (int *) ;
 int laptop_mode_wb_timer ;

void laptop_sync_completion(void)
{
 del_timer(&laptop_mode_wb_timer);
}
