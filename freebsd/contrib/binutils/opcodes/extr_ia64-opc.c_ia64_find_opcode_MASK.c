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
struct ia64_opcode {int dummy; } ;

/* Variables and functions */
 short FUNC0 (short) ; 
 short FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char*) ; 
 struct ia64_opcode* FUNC3 (char const*,short) ; 
 int FUNC4 (char const*) ; 

struct ia64_opcode *
FUNC5 (const char *name)
{
  char op[129];
  const char *suffix;
  short place;
  short name_index;

  if (FUNC4 (name) > 128)
    {
      return NULL;
    }
  suffix = name;
  FUNC2 (&suffix, op);
  name_index = FUNC1 (op);
  if (name_index < 0)
    {
      return NULL;
    }

  place = FUNC0 (name_index);

  if (place < 0)
    {
      return NULL;
    }
  return FUNC3 (name, place);
}