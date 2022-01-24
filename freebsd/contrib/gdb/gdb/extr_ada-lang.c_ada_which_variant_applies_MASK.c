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
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct type*,int) ; 
 scalar_t__ FUNC2 (struct type*,int) ; 
 struct type* FUNC3 (struct type*,char*,int,int*) ; 
 char* FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,char*) ; 

int
FUNC6 (struct type *var_type, struct type *outer_type,
			   char *outer_valaddr)
{
  int others_clause;
  int i;
  int disp;
  struct type *discrim_type;
  char *discrim_name = FUNC4 (var_type);
  LONGEST discrim_val;

  disp = 0;
  discrim_type =
    FUNC3 (outer_type, discrim_name, 1, &disp);
  if (discrim_type == NULL)
    return -1;
  discrim_val = FUNC5 (discrim_type, outer_valaddr + disp);

  others_clause = -1;
  for (i = 0; i < FUNC0 (var_type); i += 1)
    {
      if (FUNC2 (var_type, i))
	others_clause = i;
      else if (FUNC1 (discrim_val, var_type, i))
	return i;
    }

  return others_clause;
}