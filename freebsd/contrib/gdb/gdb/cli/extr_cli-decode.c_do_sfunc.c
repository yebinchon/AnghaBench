
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* sfunc ) (char*,int,struct cmd_list_element*) ;} ;
struct cmd_list_element {TYPE_1__ function; } ;


 int stub1 (char*,int,struct cmd_list_element*) ;

__attribute__((used)) static void
do_sfunc (struct cmd_list_element *c, char *args, int from_tty)
{
  c->function.sfunc (args, from_tty, c);
}
