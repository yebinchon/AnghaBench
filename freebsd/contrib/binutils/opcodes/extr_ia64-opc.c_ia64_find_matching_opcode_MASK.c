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
struct ia64_opcode {int dummy; } ;
typedef  int /*<<< orphan*/  ia64_insn ;
struct TYPE_4__ {int dependencies; scalar_t__ terminal_completer; } ;
struct TYPE_3__ {short name_index; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,short) ; 
 TYPE_2__* completer_table ; 
 short FUNC1 (short,short,char const*) ; 
 short FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char*) ; 
 TYPE_1__* main_table ; 
 struct ia64_opcode* FUNC4 (int /*<<< orphan*/ ,char const*,short,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static struct ia64_opcode *
FUNC6 (const char *name, short place)
{
  char op[129];
  const char *suffix;
  short name_index;

  if (FUNC5 (name) > 128)
    {
      return NULL;
    }
  suffix = name;
  FUNC3 (&suffix, op);
  name_index = FUNC2 (op);
  if (name_index < 0)
    {
      return NULL;
    }

  while (main_table[place].name_index == name_index)
    {
      const char *curr_suffix = suffix;
      ia64_insn curr_insn = main_table[place].opcode;
      short completer = -1;

      do {
	if (suffix[0] == '\0')
	  {
	    completer = FUNC1 (place, completer, suffix);
	  }
	else
	  {
	    FUNC3 (&curr_suffix, op);
	    completer = FUNC1 (place, completer, op);
	  }
	if (completer != -1)
	  {
	    curr_insn = FUNC0 (curr_insn, completer);
	  }
      } while (completer != -1 && curr_suffix[0] != '\0');

      if (completer != -1 && curr_suffix[0] == '\0'
	  && completer_table[completer].terminal_completer)
	{
          int depind = completer_table[completer].dependencies;
	  return FUNC4 (curr_insn, name, place, depind);
	}
      else
	{
	  place++;
	}
    }
  return NULL;
}