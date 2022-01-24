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
struct TYPE_2__ {struct debug_type* kconst; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
typedef  struct debug_type* debug_type ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_KIND_CONST ; 
 struct debug_type* DEBUG_TYPE_NULL ; 
 struct debug_type* FUNC0 (struct debug_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

debug_type
FUNC1 (void *handle, debug_type type)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;

  if (type == NULL)
    return DEBUG_TYPE_NULL;

  t = FUNC0 (info, DEBUG_KIND_CONST, 0);
  if (t == NULL)
    return DEBUG_TYPE_NULL;

  t->u.kconst = type;

  return t;
}