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
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  root_omp_region ; 

__attribute__((used)) static unsigned int
FUNC8 (void)
{
  FUNC0 ();

  if (!root_omp_region)
    return 0;

  if (dump_file)
    {
      FUNC4 (dump_file, "\nOMP region tree\n\n");
      FUNC2 (dump_file, root_omp_region, 0);
      FUNC4 (dump_file, "\n");
    }

  FUNC7 (root_omp_region);

  FUNC3 (root_omp_region);

  FUNC5 (CDI_DOMINATORS);
  FUNC5 (CDI_POST_DOMINATORS);
  FUNC1 ();

  FUNC6 ();

  return 0;
}