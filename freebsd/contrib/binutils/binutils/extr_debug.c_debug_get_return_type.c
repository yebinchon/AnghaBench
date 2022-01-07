
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_4__* debug_type ;
struct TYPE_12__ {TYPE_2__* kmethod; TYPE_1__* kfunction; } ;
struct TYPE_13__ {int kind; TYPE_3__ u; } ;
struct TYPE_11__ {TYPE_4__* return_type; } ;
struct TYPE_10__ {TYPE_4__* return_type; } ;




 TYPE_4__* DEBUG_TYPE_NULL ;
 TYPE_4__* debug_get_real_type (void*,TYPE_4__*,int *) ;

debug_type
debug_get_return_type (void *handle, debug_type type)
{
  if (type == ((void*)0))
    return DEBUG_TYPE_NULL;

  type = debug_get_real_type (handle, type, ((void*)0));
  if (type == ((void*)0))
    return DEBUG_TYPE_NULL;

  switch (type->kind)
    {
    default:
      return DEBUG_TYPE_NULL;
    case 129:
      return type->u.kfunction->return_type;
    case 128:
      return type->u.kmethod->return_type;
    }

}
