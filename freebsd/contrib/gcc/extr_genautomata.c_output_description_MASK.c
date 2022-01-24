#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_1__* decl_t ;
struct TYPE_17__ {char* name; int /*<<< orphan*/  regexp; int /*<<< orphan*/  condexp; } ;
struct TYPE_16__ {char* name; int /*<<< orphan*/  regexp; } ;
struct TYPE_15__ {char* name; int /*<<< orphan*/ * final_absence_list; int /*<<< orphan*/ * absence_list; int /*<<< orphan*/ * final_presence_list; int /*<<< orphan*/ * presence_list; int /*<<< orphan*/ * excl_list; } ;
struct TYPE_14__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_12__ {int latency; char* out_insn_name; char* in_insn_name; } ;

/* Variables and functions */
 TYPE_10__* FUNC0 (TYPE_1__*) ; 
 TYPE_8__* FUNC1 (TYPE_1__*) ; 
 TYPE_6__* FUNC2 (TYPE_1__*) ; 
 TYPE_4__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* advance_cycle_insn_decl ; 
 TYPE_2__* description ; 
 scalar_t__ dm_bypass ; 
 scalar_t__ dm_insn_reserv ; 
 scalar_t__ dm_reserv ; 
 scalar_t__ dm_unit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  output_description_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  decl_t decl;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit)
	{
	  if (FUNC3 (decl)->excl_list != NULL)
	    {
	      FUNC4 (output_description_file, "unit %s exlusion_set: ",
		       FUNC3 (decl)->name);
	      FUNC7 (FUNC3 (decl)->excl_list);
	      FUNC4 (output_description_file, "\n");
	    }
	  if (FUNC3 (decl)->presence_list != NULL)
	    {
	      FUNC4 (output_description_file, "unit %s presence_set: ",
		       FUNC3 (decl)->name);
	      FUNC5 (FUNC3 (decl)->presence_list);
	      FUNC4 (output_description_file, "\n");
	    }
	  if (FUNC3 (decl)->final_presence_list != NULL)
	    {
	      FUNC4 (output_description_file, "unit %s final_presence_set: ",
		       FUNC3 (decl)->name);
	      FUNC5
		(FUNC3 (decl)->final_presence_list);
	      FUNC4 (output_description_file, "\n");
	    }
	  if (FUNC3 (decl)->absence_list != NULL)
	    {
	      FUNC4 (output_description_file, "unit %s absence_set: ",
		       FUNC3 (decl)->name);
	      FUNC5 (FUNC3 (decl)->absence_list);
	      FUNC4 (output_description_file, "\n");
	    }
	  if (FUNC3 (decl)->final_absence_list != NULL)
	    {
	      FUNC4 (output_description_file, "unit %s final_absence_set: ",
		       FUNC3 (decl)->name);
	      FUNC5
		(FUNC3 (decl)->final_absence_list);
	      FUNC4 (output_description_file, "\n");
	    }
	}
    }
  FUNC4 (output_description_file, "\n");
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_reserv)
	{
          FUNC4 (output_description_file, "reservation %s: ",
		   FUNC2 (decl)->name);
          FUNC6 (FUNC2 (decl)->regexp);
          FUNC4 (output_description_file, "\n");
        }
      else if (decl->mode == dm_insn_reserv && decl != advance_cycle_insn_decl)
        {
          FUNC4 (output_description_file, "insn reservation %s ",
		   FUNC1 (decl)->name);
          FUNC8 (output_description_file,
		     FUNC1 (decl)->condexp);
          FUNC4 (output_description_file, ": ");
          FUNC6 (FUNC1 (decl)->regexp);
          FUNC4 (output_description_file, "\n");
        }
      else if (decl->mode == dm_bypass)
	FUNC4 (output_description_file, "bypass %d %s %s\n",
		 FUNC0 (decl)->latency,
		 FUNC0 (decl)->out_insn_name,
		 FUNC0 (decl)->in_insn_name);
    }
  FUNC4 (output_description_file, "\n\f\n");
}