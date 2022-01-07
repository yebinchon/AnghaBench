
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_context {int mode; int (* func ) (char*,int ) ;} ;
struct cmd_list_element {int dummy; } ;


 struct dump_context* get_cmd_context (struct cmd_list_element*) ;
 int stub1 (char*,int ) ;

__attribute__((used)) static void
call_dump_func (struct cmd_list_element *c, char *args, int from_tty)
{
  struct dump_context *d = get_cmd_context (c);
  d->func (args, d->mode);
}
