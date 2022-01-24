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
struct case_bit_test {scalar_t__ bits; int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (const void *p1, const void *p2)
{
  const struct case_bit_test *d1 = p1;
  const struct case_bit_test *d2 = p2;

  if (d2->bits != d1->bits)
    return d2->bits - d1->bits;

  /* Stabilize the sort.  */
  return FUNC0 (d2->label) - FUNC0 (d1->label);
}