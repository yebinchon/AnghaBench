
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* debug_type ;
typedef int debug_field ;
struct TYPE_8__ {TYPE_1__* kclass; } ;
struct TYPE_9__ {int kind; TYPE_2__ u; } ;
struct TYPE_7__ {int const* fields; } ;






 TYPE_3__* debug_get_real_type (void*,TYPE_3__*,int *) ;

const debug_field *
debug_get_fields (void *handle, debug_type type)
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
    case 130:
    case 129:
    case 131:
    case 128:
      return type->u.kclass->fields;
    }

}
