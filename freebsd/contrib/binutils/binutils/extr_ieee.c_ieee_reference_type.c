
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_handle {TYPE_2__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {int referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 int FALSE ;
 int TRUE ;
 int ieee_pointer_type (void*) ;

__attribute__((used)) static bfd_boolean
ieee_reference_type (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;




  if (! ieee_pointer_type (p))
    return FALSE;
  info->type_stack->type.referencep = TRUE;
  return TRUE;
}
