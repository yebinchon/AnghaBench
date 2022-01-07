
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
typedef scalar_t__ debug_type ;


 scalar_t__ DEBUG_TYPE_NULL ;
 scalar_t__ debug_make_indirect_type (void*,scalar_t__*,char const*) ;
 scalar_t__* stab_find_slot (struct stab_handle*,int const*) ;
 scalar_t__ stab_xcoff_builtin_type (void*,struct stab_handle*,int const) ;

__attribute__((used)) static debug_type
stab_find_type (void *dhandle, struct stab_handle *info, const int *typenums)
{
  debug_type *slot;

  if (typenums[0] == 0 && typenums[1] < 0)
    {

      return stab_xcoff_builtin_type (dhandle, info, typenums[1]);
    }

  slot = stab_find_slot (info, typenums);
  if (slot == ((void*)0))
    return DEBUG_TYPE_NULL;

  if (*slot == DEBUG_TYPE_NULL)
    return debug_make_indirect_type (dhandle, slot, (const char *) ((void*)0));

  return *slot;
}
