
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_5__* debug_type ;
struct TYPE_10__ {TYPE_2__* knamed; TYPE_3__* kindirect; } ;
struct TYPE_11__ {scalar_t__ kind; TYPE_4__ u; } ;
struct TYPE_9__ {char const* tag; TYPE_5__** slot; } ;
struct TYPE_8__ {TYPE_1__* name; } ;
struct TYPE_7__ {char const* name; } ;


 scalar_t__ DEBUG_KIND_INDIRECT ;
 scalar_t__ DEBUG_KIND_NAMED ;
 scalar_t__ DEBUG_KIND_TAGGED ;

const char *
debug_get_type_name (void *handle, debug_type type)
{
  if (type->kind == DEBUG_KIND_INDIRECT)
    {
      if (*type->u.kindirect->slot != ((void*)0))
 return debug_get_type_name (handle, *type->u.kindirect->slot);
      return type->u.kindirect->tag;
    }
  if (type->kind == DEBUG_KIND_NAMED
      || type->kind == DEBUG_KIND_TAGGED)
    return type->u.knamed->name->name;
  return ((void*)0);
}
