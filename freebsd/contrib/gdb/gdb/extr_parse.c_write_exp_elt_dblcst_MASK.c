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
union exp_element {int /*<<< orphan*/  doubleconst; } ;
typedef  int /*<<< orphan*/  DOUBLEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union exp_element) ; 

void
FUNC1 (DOUBLEST expelt)
{
  union exp_element tmp;

  tmp.doubleconst = expelt;

  FUNC0 (tmp);
}