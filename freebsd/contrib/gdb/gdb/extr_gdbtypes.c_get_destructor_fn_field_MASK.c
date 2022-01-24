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
struct fn_field {int dummy; } ;

/* Variables and functions */
 struct fn_field* FUNC0 (struct type*,int) ; 
 int FUNC1 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fn_field*,int) ; 
 int FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (struct type *t, int *method_indexp, int *field_indexp)
{
  int i;

  for (i = 0; i < FUNC3 (t); i++)
    {
      int j;
      struct fn_field *f = FUNC0 (t, i);

      for (j = 0; j < FUNC1 (t, i); j++)
	{
	  if (FUNC4 (FUNC2 (f, j)) != 0)
	    {
	      *method_indexp = i;
	      *field_indexp = j;
	      return 1;
	    }
	}
    }
  return 0;
}