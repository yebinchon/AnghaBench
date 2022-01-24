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
struct mapping {int dummy; } ;
struct map_value {int number; char* string; struct map_value* next; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int /*<<< orphan*/  macros; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_MACHINE_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 struct map_value* FUNC4 (char*,struct mapping*,int) ; 
 TYPE_1__ modes ; 

__attribute__((used)) static void
FUNC5 (rtx x, struct map_value *mode_maps, struct mapping *macro,
		 int value, FILE *infile, const char **unknown)
{
  unsigned int offset;
  int indx;
  struct map_value *pm;

  offset = MAX_MACHINE_MODE + FUNC3 (modes.macros);
  if (FUNC0 (x) < offset)
    return;

  indx = FUNC0 (x) - offset;
  for (pm = mode_maps; pm; pm = pm->next)
    {
      if (pm->number == indx)
	{
	  struct map_value *v;

	  v = FUNC4 (pm->string, macro, value);
	  if (v)
	    FUNC1 (x, (enum machine_mode) FUNC2 (v->string, infile));
	  else
	    *unknown = pm->string;
	  return;
	}
    }
}