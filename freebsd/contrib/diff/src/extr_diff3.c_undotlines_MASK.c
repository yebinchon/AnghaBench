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
typedef  int lin ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1 (FILE *outputfile, bool leading_dot, long int start, lin num)
{
  FUNC0 (outputfile, ".\n");
  if (leading_dot)
    {
      if (num == 1)
	FUNC0 (outputfile, "%lds/^\\.//\n", start);
      else
	FUNC0 (outputfile, "%ld,%lds/^\\.//\n", start, start + num - 1);
    }
}