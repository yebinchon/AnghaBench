
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_filtered (char*) ;
 int registers_changed () ;

__attribute__((used)) static void
reg_flush_command (char *command, int from_tty)
{

  registers_changed ();
  if (from_tty)
    printf_filtered ("Register cache flushed.\n");
}
