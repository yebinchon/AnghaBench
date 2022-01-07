
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef TYPE_1__* debug_type ;
struct TYPE_5__ {int kind; } ;


 int DEBUG_KIND_ILLEGAL ;
 TYPE_1__* debug_get_real_type (void*,TYPE_1__*,int *) ;

enum debug_type_kind
debug_get_type_kind (void *handle, debug_type type)
{
  if (type == ((void*)0))
    return DEBUG_KIND_ILLEGAL;
  type = debug_get_real_type (handle, type, ((void*)0));
  if (type == ((void*)0))
    return DEBUG_KIND_ILLEGAL;
  return type->kind;
}
