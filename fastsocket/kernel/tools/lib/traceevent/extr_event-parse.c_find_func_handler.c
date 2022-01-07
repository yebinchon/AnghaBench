
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_function_handler {int name; struct pevent_function_handler* next; } ;
struct pevent {struct pevent_function_handler* func_handlers; } ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct pevent_function_handler *
find_func_handler(struct pevent *pevent, char *func_name)
{
 struct pevent_function_handler *func;

 if (!pevent)
  return ((void*)0);

 for (func = pevent->func_handlers; func; func = func->next) {
  if (strcmp(func->name, func_name) == 0)
   break;
 }

 return func;
}
