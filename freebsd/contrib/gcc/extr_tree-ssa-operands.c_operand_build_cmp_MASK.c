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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (const void *p, const void *q)
{
  tree e1 = *((const tree *)p);
  tree e2 = *((const tree *)q);
  unsigned int u1,u2;

  u1 = FUNC1 (e1);
  u2 = FUNC1 (e2);

  /* We want to sort in ascending order.  They can never be equal.  */
#ifdef ENABLE_CHECKING
  gcc_assert (u1 != u2);
#endif
  return (u1 > u2 ? 1 : -1);
}