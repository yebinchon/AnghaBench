
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {int size; } ;


 int stab_modify_type (struct stab_write_handle*,char,int ,long**,size_t*) ;

__attribute__((used)) static bfd_boolean
stab_const_type (void *p)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;

  return stab_modify_type (info, 'k', info->type_stack->size,
      (long **) ((void*)0), (size_t *) ((void*)0));
}
