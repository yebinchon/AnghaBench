
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_function_handler {struct pevent_function_handler* next; struct pevent_function_handler* params; struct pevent_function_handler* name; } ;
struct pevent_func_params {struct pevent_func_params* next; struct pevent_func_params* params; struct pevent_func_params* name; } ;


 int free (struct pevent_function_handler*) ;

__attribute__((used)) static void free_func_handle(struct pevent_function_handler *func)
{
 struct pevent_func_params *params;

 free(func->name);

 while (func->params) {
  params = func->params;
  func->params = params->next;
  free(params);
 }

 free(func);
}
