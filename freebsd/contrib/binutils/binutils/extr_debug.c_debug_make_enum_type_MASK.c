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
struct TYPE_2__ {struct debug_enum_type* kenum; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
struct debug_enum_type {char const** names; int /*<<< orphan*/ * values; } ;
typedef  struct debug_type* debug_type ;
typedef  int /*<<< orphan*/  bfd_signed_vma ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_KIND_ENUM ; 
 struct debug_type* DEBUG_TYPE_NULL ; 
 struct debug_type* FUNC0 (struct debug_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct debug_enum_type*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

debug_type
FUNC3 (void *handle, const char **names,
		      bfd_signed_vma *values)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_enum_type *e;

  t = FUNC0 (info, DEBUG_KIND_ENUM, 0);
  if (t == NULL)
    return DEBUG_TYPE_NULL;

  e = (struct debug_enum_type *) FUNC2 (sizeof *e);
  FUNC1 (e, 0, sizeof *e);

  e->names = names;
  e->values = values;

  t->u.kenum = e;

  return t;
}