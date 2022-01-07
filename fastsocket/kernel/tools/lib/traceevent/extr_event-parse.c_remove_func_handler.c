
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_function_handler {struct pevent_function_handler* next; int name; } ;
struct pevent {struct pevent_function_handler* func_handlers; } ;


 int free_func_handle (struct pevent_function_handler*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void remove_func_handler(struct pevent *pevent, char *func_name)
{
 struct pevent_function_handler *func;
 struct pevent_function_handler **next;

 next = &pevent->func_handlers;
 while ((func = *next)) {
  if (strcmp(func->name, func_name) == 0) {
   *next = func->next;
   free_func_handle(func);
   break;
  }
  next = &func->next;
 }
}
