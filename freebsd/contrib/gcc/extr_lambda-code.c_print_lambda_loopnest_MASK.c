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
typedef  int /*<<< orphan*/  lambda_loopnest ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char) ; 

void
FUNC5 (FILE * outfile, lambda_loopnest nest, char start)
{
  int i;
  for (i = 0; i < FUNC0 (nest); i++)
    {
      FUNC3 (outfile, "Loop %c\n", start + i);
      FUNC4 (outfile, FUNC2 (nest)[i], FUNC0 (nest),
			 FUNC1 (nest), 'i');
      FUNC3 (outfile, "\n");
    }
}