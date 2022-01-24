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
struct TYPE_2__ {scalar_t__ units_num; } ;

/* Variables and functions */
 scalar_t__ automata_num ; 
 int /*<<< orphan*/  automaton_generation_time ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* description ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ split_argument ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  automata_num = split_argument;
  if (description->units_num < automata_num)
    automata_num = description->units_num;
  FUNC7 ();
  FUNC2 ();
  FUNC3 ();
  FUNC5 ();
  FUNC4 ();
  FUNC6 ();
  automaton_generation_time = FUNC1 ();
  FUNC0 ();
  FUNC8 (&automaton_generation_time);
}