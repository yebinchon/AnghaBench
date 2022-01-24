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

/* Variables and functions */
 char* FUNC0 (int) ; 
 int NUM_RTX_CODE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* non_rtx_starting_operands ; 
 char* FUNC2 (char const*,char*) ; 

void
FUNC3 (void)
{
  int i;
  for (i = 0; i < NUM_RTX_CODE; i++)
    {
      const char *format = FUNC0 (i);
      const char *first = FUNC2 (format, "eEV");
      non_rtx_starting_operands[i] = first ? first - format : -1;
    }

  FUNC1 ();
}