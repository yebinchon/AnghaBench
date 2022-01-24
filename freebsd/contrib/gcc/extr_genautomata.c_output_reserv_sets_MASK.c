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
typedef  int /*<<< orphan*/  set_el_t ;
typedef  scalar_t__ reserv_sets_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int els_in_cycle_reserv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int max_cycles_num ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC3 (FILE *f, reserv_sets_t reservs)
{
  int start_cycle = 0;
  int cycle;
  int repetition_num;

  repetition_num = 0;
  for (cycle = 0; cycle < max_cycles_num; cycle++)
    if (repetition_num == 0)
      {
        repetition_num++;
        start_cycle = cycle;
      }
    else if (FUNC1
             ((char *) reservs + start_cycle * els_in_cycle_reserv
	      * sizeof (set_el_t),
              (char *) reservs + cycle * els_in_cycle_reserv
	      * sizeof (set_el_t),
	      els_in_cycle_reserv * sizeof (set_el_t)) == 0)
      repetition_num++;
    else
      {
        if (start_cycle != 0)
          FUNC0 (f, ", ");
        FUNC2 (f, reservs, start_cycle, repetition_num);
        repetition_num = 1;
        start_cycle = cycle;
      }
  if (start_cycle < max_cycles_num)
    {
      if (start_cycle != 0)
        FUNC0 (f, ", ");
      FUNC2 (f, reservs, start_cycle, repetition_num);
    }
}