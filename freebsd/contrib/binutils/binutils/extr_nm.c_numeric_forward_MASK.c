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
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (void const*,void const*) ; 
 int /*<<< orphan*/  sort_bfd ; 
 int /*<<< orphan*/  sort_dynamic ; 
 int /*<<< orphan*/  sort_x ; 
 int /*<<< orphan*/  sort_y ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7 (const void *P_x, const void *P_y)
{
  asymbol *x, *y;
  asection *xs, *ys;

  x = FUNC4 (sort_bfd, sort_dynamic, P_x, sort_x);
  y =  FUNC4 (sort_bfd, sort_dynamic, P_y, sort_y);
  if (x == NULL || y == NULL)
    FUNC0 (FUNC1 (sort_bfd));

  xs = FUNC2 (x);
  ys = FUNC2 (y);

  if (FUNC3 (xs))
    {
      if (! FUNC3 (ys))
	return -1;
    }
  else if (FUNC3 (ys))
    return 1;
  else if (FUNC6 (x) != FUNC6 (y))
    return FUNC6 (x) < FUNC6 (y) ? -1 : 1;

  return FUNC5 (P_x, P_y);
}