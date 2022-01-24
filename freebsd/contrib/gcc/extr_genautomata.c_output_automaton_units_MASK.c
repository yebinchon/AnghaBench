#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* decl_t ;
typedef  TYPE_2__* automaton_t ;
struct TYPE_10__ {scalar_t__ corresponding_automaton_num; char* name; } ;
struct TYPE_9__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_8__ {scalar_t__ automaton_order_num; } ;
struct TYPE_7__ {scalar_t__ mode; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int MAX_LINE_LENGTH ; 
 TYPE_4__* description ; 
 scalar_t__ dm_unit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  output_description_file ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3 (automaton_t automaton)
{
  decl_t decl;
  const char *name;
  int curr_line_length;
  int there_is_an_automaton_unit;
  int i;

  FUNC1 (output_description_file, "\n  Corresponding units:\n");
  FUNC1 (output_description_file, "    ");
  curr_line_length = 4;
  there_is_an_automaton_unit = 0;
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit
          && (FUNC0 (decl)->corresponding_automaton_num
	      == automaton->automaton_order_num))
	{
	  there_is_an_automaton_unit = 1;
	  name = FUNC0 (decl)->name;
	  if (curr_line_length + FUNC2 (name) + 1 > MAX_LINE_LENGTH )
	    {
	      curr_line_length = FUNC2 (name) + 4;
	      FUNC1 (output_description_file, "\n    ");
	    }
	  else
	    {
	      curr_line_length += FUNC2 (name) + 1;
	      FUNC1 (output_description_file, " ");
	    }
	  FUNC1 (output_description_file, "%s", name);
	}
    }
  if (!there_is_an_automaton_unit)
    FUNC1 (output_description_file, "<None>");
  FUNC1 (output_description_file, "\n\n");
}