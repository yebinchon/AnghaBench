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
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_2__* regexp_t ;
typedef  TYPE_3__* automaton_t ;
struct TYPE_17__ {int regexps_num; TYPE_2__** regexps; } ;
struct TYPE_16__ {TYPE_1__* unit_decl; } ;
struct TYPE_15__ {int /*<<< orphan*/  automaton_order_num; } ;
struct TYPE_14__ {int mode; } ;
struct TYPE_13__ {int /*<<< orphan*/  unit_num; int /*<<< orphan*/  corresponding_automaton_num; } ;
struct TYPE_12__ {int regexps_num; TYPE_2__** regexps; } ;

/* Variables and functions */
 TYPE_10__* FUNC0 (TYPE_2__*) ; 
 TYPE_8__* FUNC1 (TYPE_2__*) ; 
 TYPE_6__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
#define  rm_allof 131 
#define  rm_nothing 130 
#define  rm_sequence 129 
#define  rm_unit 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  state_being_formed ; 

__attribute__((used)) static int
FUNC5 (regexp_t regexp, automaton_t automaton,
				int curr_cycle)
{
  int i;

  if (regexp == NULL)
    return curr_cycle;

  switch (regexp->mode)
    {
    case rm_unit:
      if (FUNC2 (regexp)->unit_decl->corresponding_automaton_num
          == automaton->automaton_order_num)
        FUNC4 (state_being_formed, curr_cycle,
                          FUNC2 (regexp)->unit_decl->unit_num);
      return curr_cycle;
      
    case rm_sequence:
      for (i = 0; i < FUNC1 (regexp)->regexps_num; i++)
	curr_cycle
	  = FUNC5
	    (FUNC1 (regexp)->regexps [i], automaton, curr_cycle) + 1;
      return curr_cycle;

    case rm_allof:
      {
	int finish_cycle = 0;
	int cycle;
	
	for (i = 0; i < FUNC0 (regexp)->regexps_num; i++)
	  {
	    cycle = FUNC5 (FUNC0 (regexp)
						    ->regexps [i],
						    automaton, curr_cycle);
	    if (finish_cycle < cycle)
	      finish_cycle = cycle;
	  }
	return finish_cycle;
      }

    case rm_nothing:
      return curr_cycle;

    default:
      FUNC3 ();
    }
}