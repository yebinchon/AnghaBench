
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {TYPE_1__* stack; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef int bfd_boolean ;
struct TYPE_2__ {int visibility; } ;


 scalar_t__ DEBUG_VISIBILITY_IGNORE ;
 int TRUE ;
 int assert (int) ;

__attribute__((used)) static bfd_boolean
tg_fix_visibility (struct pr_handle *info, enum debug_visibility visibility)
{
  assert (info->stack != ((void*)0));

  if (info->stack->visibility == visibility)
    return TRUE;

  assert (info->stack->visibility != DEBUG_VISIBILITY_IGNORE);

  info->stack->visibility = visibility;

  return TRUE;
}
