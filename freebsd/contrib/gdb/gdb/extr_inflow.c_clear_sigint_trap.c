
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 scalar_t__ attach_flag ;
 scalar_t__ inferior_thisrun_terminal ;
 int osig ;
 int signal (int ,int ) ;

void
clear_sigint_trap (void)
{
  if (attach_flag || inferior_thisrun_terminal)
    {
      signal (SIGINT, osig);
    }
}
