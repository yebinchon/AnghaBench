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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (FILE * f)
{
  FUNC0 (f, "\nNODE COUNTS :\n");
  FUNC4 (f);
  FUNC0 (f, "\nCS COUNTS stage:\n");
  FUNC2 (f);
  FUNC0 (f, "\nBB COUNTS and FREQUENCIES :\n");
  FUNC1 (f);
  FUNC0 (f, "\nCFG EDGES COUNTS and PROBABILITIES :\n");
  FUNC3 (f);
}