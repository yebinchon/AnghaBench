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
typedef  int /*<<< orphan*/  double_int ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC5 (FILE *file, double_int cst, bool uns)
{
  unsigned digits[100], n;
  int i;

  if (FUNC3 (cst))
    {
      FUNC4 (file, "0");
      return;
    }

  if (!uns && FUNC1 (cst))
    {
      FUNC4 (file, "-");
      cst = FUNC0 (cst);
    }

  for (n = 0; !FUNC3 (cst); n++)
    digits[n] = FUNC2 (&cst, 10);
  for (i = n - 1; i >= 0; i--)
    FUNC4 (file, "%u", digits[i]);
}