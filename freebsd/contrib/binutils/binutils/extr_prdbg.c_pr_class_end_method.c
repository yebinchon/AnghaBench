
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {TYPE_1__* stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {int * method; } ;


 int TRUE ;

__attribute__((used)) static bfd_boolean
pr_class_end_method (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;

  info->stack->method = ((void*)0);
  return TRUE;
}
