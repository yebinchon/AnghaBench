
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* debug_type ;
struct TYPE_7__ {TYPE_2__* kvolatile; TYPE_2__* kconst; TYPE_2__* kreference; TYPE_2__* kpointer; } ;
struct TYPE_8__ {int kind; TYPE_1__ u; } ;






 TYPE_2__* debug_get_real_type (void*,TYPE_2__*,int *) ;

debug_type
debug_get_target_type (void *handle, debug_type type)
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
      return type->u.kpointer;
    case 129:
      return type->u.kreference;
    case 131:
      return type->u.kconst;
    case 128:
      return type->u.kvolatile;
    }

}
