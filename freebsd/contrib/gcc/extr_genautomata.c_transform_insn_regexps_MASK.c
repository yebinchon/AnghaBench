#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* decl_t ;
struct TYPE_8__ {int /*<<< orphan*/  regexp; int /*<<< orphan*/  transformed_regexp; } ;
struct TYPE_7__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_6__ {scalar_t__ mode; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* advance_cycle_insn_decl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* description ; 
 scalar_t__ dm_insn_reserv ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ progress_flag ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transform_time ; 

__attribute__((used)) static void
FUNC7 (void)
{
  decl_t decl;
  int i;

  transform_time = FUNC3 ();
  FUNC1 ();
  if (progress_flag)
    FUNC4 (stderr, "Reservation transformation...");
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv && decl != advance_cycle_insn_decl)
	FUNC0 (decl)->transformed_regexp
	  = FUNC6 (FUNC2
			      (FUNC0 (decl)->regexp));
    }
  if (progress_flag)
    FUNC4 (stderr, "done\n");
  FUNC5 (&transform_time);
}