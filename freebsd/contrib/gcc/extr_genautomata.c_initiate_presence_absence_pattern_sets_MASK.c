#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* pattern_reserv_t ;
typedef  TYPE_1__* decl_t ;
struct TYPE_7__ {size_t unit_num; int /*<<< orphan*/  final_absence_list; int /*<<< orphan*/  absence_list; int /*<<< orphan*/  final_presence_list; int /*<<< orphan*/  presence_list; } ;
struct TYPE_6__ {int units_num; int decls_num; TYPE_1__** decls; } ;
struct TYPE_5__ {scalar_t__ mode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 TYPE_2__* description ; 
 scalar_t__ dm_unit ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irp ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void** unit_absence_set_table ; 
 void** unit_final_absence_set_table ; 
 void** unit_final_presence_set_table ; 
 void** unit_presence_set_table ; 

__attribute__((used)) static void
FUNC5 (void)
{
  decl_t decl;
  int i;

  FUNC3 (&irp, description->units_num * sizeof (pattern_reserv_t));
  unit_presence_set_table = (pattern_reserv_t *) FUNC2 (&irp);
  (void) FUNC4 (&irp);
  FUNC3 (&irp, description->units_num * sizeof (pattern_reserv_t));
  unit_final_presence_set_table = (pattern_reserv_t *) FUNC2 (&irp);
  (void) FUNC4 (&irp);
  FUNC3 (&irp, description->units_num * sizeof (pattern_reserv_t));
  unit_absence_set_table = (pattern_reserv_t *) FUNC2 (&irp);
  (void) FUNC4 (&irp);
  FUNC3 (&irp, description->units_num * sizeof (pattern_reserv_t));
  unit_final_absence_set_table = (pattern_reserv_t *) FUNC2 (&irp);
  (void) FUNC4 (&irp);
  /* Evaluate unit presence/absence sets.  */
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit)
	{
          unit_presence_set_table [FUNC0 (decl)->unit_num]
	    = FUNC1 (FUNC0 (decl)->presence_list);
          unit_final_presence_set_table [FUNC0 (decl)->unit_num]
	    = FUNC1 (FUNC0 (decl)->final_presence_list);
          unit_absence_set_table [FUNC0 (decl)->unit_num]
	    = FUNC1 (FUNC0 (decl)->absence_list);
          unit_final_absence_set_table [FUNC0 (decl)->unit_num]
	    = FUNC1 (FUNC0 (decl)->final_absence_list);
        }
    }
}