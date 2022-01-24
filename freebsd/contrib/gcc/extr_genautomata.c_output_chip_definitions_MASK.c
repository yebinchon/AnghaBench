#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* automaton_t ;
struct TYPE_6__ {TYPE_1__* first_automaton; } ;
struct TYPE_5__ {struct TYPE_5__* next_automaton; } ;

/* Variables and functions */
 char* CHIP_NAME ; 
 TYPE_4__* description ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  automaton_t automaton;

  FUNC0 (output_file, "struct %s\n{\n", CHIP_NAME);
  for (automaton = description->first_automaton;
       automaton != NULL;
       automaton = automaton->next_automaton)
    {
      FUNC0 (output_file, "  ");
      FUNC2 (output_file, automaton);
      FUNC0 (output_file, " ");
      FUNC1 (output_file, automaton);
      FUNC0 (output_file, ";\n");
    }
  FUNC0 (output_file, "};\n\n");
#if 0
  fprintf (output_file, "static struct %s %s;\n\n", CHIP_NAME, CHIP_NAME);
#endif
}