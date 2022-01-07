
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; } ;


 TYPE_1__* current_inferior ;
 int gdb_assert (TYPE_1__*) ;
 int terminal_init_inferior_with_pgrp (int ) ;

__attribute__((used)) static void
gnu_terminal_init_inferior (void)
{
  gdb_assert (current_inferior);
  terminal_init_inferior_with_pgrp (current_inferior->pid);
}
