
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int def_tmr ;
 int del_timer (int *) ;
 scalar_t__ opened ;
 scalar_t__ tmr_running ;

__attribute__((used)) static void
def_tmr_close(int dev)
{
 opened = tmr_running = 0;
 del_timer(&def_tmr);
}
