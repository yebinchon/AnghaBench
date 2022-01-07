
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int flags; } ;


 int CON_ENABLED ;
 int acquire_console_sem () ;
 int release_console_sem () ;

void console_start(struct console *console)
{
 acquire_console_sem();
 console->flags |= CON_ENABLED;
 release_console_sem();
}
