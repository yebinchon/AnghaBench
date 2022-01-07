
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int dummy; } ;


 scalar_t__ DBG_OUTPUT ;
 scalar_t__ TIPC_NULL ;
 int link_print (struct link*,scalar_t__,char const*) ;

__attribute__((used)) static void dbg_print_link(struct link *l_ptr, const char *str)
{
 if (DBG_OUTPUT != TIPC_NULL)
  link_print(l_ptr, DBG_OUTPUT, str);
}
