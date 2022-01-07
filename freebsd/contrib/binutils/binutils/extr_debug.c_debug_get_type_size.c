
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_4__* debug_type ;
typedef scalar_t__ bfd_vma ;
struct TYPE_7__ {TYPE_3__* knamed; TYPE_1__* kindirect; } ;
struct TYPE_9__ {scalar_t__ size; int kind; TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_4__* type; } ;
struct TYPE_6__ {TYPE_4__** slot; } ;






bfd_vma
debug_get_type_size (void *handle, debug_type type)
{
  if (type == ((void*)0))
    return 0;




  if (type->size != 0)
    return type->size;

  switch (type->kind)
    {
    default:
      return 0;
    case 130:
      if (*type->u.kindirect->slot != ((void*)0))
 return debug_get_type_size (handle, *type->u.kindirect->slot);
      return 0;
    case 129:
    case 128:
      return debug_get_type_size (handle, type->u.knamed->type);
    }

}
