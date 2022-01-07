
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ inf_mode_valid ;
 int terminal_is_ours ;

__attribute__((used)) static void
go32_terminal_init (void)
{
  inf_mode_valid = 0;
  terminal_is_ours = 1;
}
