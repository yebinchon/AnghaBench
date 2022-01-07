
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cfunc ) (char*,int) ;} ;
struct cmd_list_element {TYPE_1__ function; } ;


 int stub1 (char*,int) ;

__attribute__((used)) static void
do_cfunc (struct cmd_list_element *c, char *args, int from_tty)
{
  c->function.cfunc (args, from_tty);
}
