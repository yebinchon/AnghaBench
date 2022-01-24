#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stab_handle {int dummy; } ;
typedef  scalar_t__ debug_type ;

/* Variables and functions */
 scalar_t__ DEBUG_TYPE_NULL ; 
 scalar_t__ FUNC0 (void*,scalar_t__*,char const*) ; 
 scalar_t__* FUNC1 (struct stab_handle*,int const*) ; 
 scalar_t__ FUNC2 (void*,struct stab_handle*,int const) ; 

__attribute__((used)) static debug_type
FUNC3 (void *dhandle, struct stab_handle *info, const int *typenums)
{
  debug_type *slot;

  if (typenums[0] == 0 && typenums[1] < 0)
    {
      /* A negative type number indicates an XCOFF builtin type.  */
      return FUNC2 (dhandle, info, typenums[1]);
    }

  slot = FUNC1 (info, typenums);
  if (slot == NULL)
    return DEBUG_TYPE_NULL;

  if (*slot == DEBUG_TYPE_NULL)
    return FUNC0 (dhandle, slot, (const char *) NULL);

  return *slot;
}