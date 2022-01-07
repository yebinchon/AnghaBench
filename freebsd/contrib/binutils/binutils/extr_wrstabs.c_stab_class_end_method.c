
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {int * methods; } ;


 int TRUE ;
 int assert (int) ;
 int strcat (int *,char*) ;

__attribute__((used)) static bfd_boolean
stab_class_end_method (void *p)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;

  assert (info->type_stack != ((void*)0) && info->type_stack->methods != ((void*)0));



  strcat (info->type_stack->methods, ";");

  return TRUE;
}
