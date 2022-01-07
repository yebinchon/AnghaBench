
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* inferior_thisrun_terminal ;

void
new_tty_prefork (char *ttyname)
{


  inferior_thisrun_terminal = ttyname;
}
