#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct debug_offset_type* koffset; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_offset_type {struct debug_type* target_type; struct debug_type* base_type; } ;
struct debug_handle {int dummy; } ;
typedef  struct debug_type* debug_type ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_KIND_OFFSET ; 
 struct debug_type* DEBUG_TYPE_NULL ; 
 struct debug_type* FUNC0 (struct debug_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct debug_offset_type*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

debug_type
FUNC3 (void *handle, debug_type base_type,
			debug_type target_type)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_offset_type *o;

  if (base_type == NULL || target_type == NULL)
    return DEBUG_TYPE_NULL;

  t = FUNC0 (info, DEBUG_KIND_OFFSET, 0);
  if (t == NULL)
    return DEBUG_TYPE_NULL;

  o = (struct debug_offset_type *) FUNC2 (sizeof *o);
  FUNC1 (o, 0, sizeof *o);

  o->base_type = base_type;
  o->target_type = target_type;

  t->u.koffset = o;

  return t;
}