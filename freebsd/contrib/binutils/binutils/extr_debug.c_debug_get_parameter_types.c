
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_4__* debug_type ;
typedef int bfd_boolean ;
struct TYPE_10__ {TYPE_1__* kmethod; TYPE_3__* kfunction; } ;
struct TYPE_12__ {int kind; TYPE_2__ u; } ;
struct TYPE_11__ {TYPE_4__* const* arg_types; int varargs; } ;
struct TYPE_9__ {TYPE_4__* const* arg_types; int varargs; } ;




 TYPE_4__* debug_get_real_type (void*,TYPE_4__*,int *) ;

const debug_type *
debug_get_parameter_types (void *handle, debug_type type,
      bfd_boolean *pvarargs)
{
  if (type == ((void*)0))
    return ((void*)0);

  type = debug_get_real_type (handle, type, ((void*)0));
  if (type == ((void*)0))
    return ((void*)0);

  switch (type->kind)
    {
    default:
      return ((void*)0);
    case 129:
      *pvarargs = type->u.kfunction->varargs;
      return type->u.kfunction->arg_types;
    case 128:
      *pvarargs = type->u.kmethod->varargs;
      return type->u.kmethod->arg_types;
    }

}
