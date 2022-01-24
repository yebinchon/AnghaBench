#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee_pending_parm {char const* name; int kind; int /*<<< orphan*/  type; struct ieee_pending_parm* next; int /*<<< orphan*/  val; int /*<<< orphan*/  referencep; } ;
struct ieee_handle {int block_depth; int /*<<< orphan*/  fnargcount; int /*<<< orphan*/  fnargs; struct ieee_pending_parm* pending_parms; TYPE_2__* type_stack; } ;
typedef  enum debug_parm_kind { ____Placeholder_debug_parm_kind } debug_parm_kind ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {int /*<<< orphan*/  referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_pending_parm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, const char *name, enum debug_parm_kind kind,
			 bfd_vma val)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_pending_parm *m, **pm;

  FUNC0 (info->block_depth == 1);

  m = (struct ieee_pending_parm *) FUNC5 (sizeof *m);
  FUNC4 (m, 0, sizeof *m);

  m->next = NULL;
  m->name = name;
  m->referencep = info->type_stack->type.referencep;
  m->type = FUNC2 (info);
  m->kind = kind;
  m->val = val;

  for (pm = &info->pending_parms; *pm != NULL; pm = &(*pm)->next)
    ;
  *pm = m;

  /* Add the type to the fnargs list.  */
  if (! FUNC1 (info, &info->fnargs)
      || ! FUNC3 (info, m->type))
    return FALSE;
  ++info->fnargcount;

  return TRUE;
}