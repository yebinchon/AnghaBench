#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC1 (const void *arg1, const void *arg2)
{
  const asection *sec1 = *(const asection **) arg1;
  const asection *sec2 = *(const asection **) arg2;

  if (FUNC0 (sec1->owner, sec1)
      < FUNC0 (sec2->owner, sec2))
    return -1;
  else if (FUNC0 (sec1->owner, sec1)
	   > FUNC0 (sec2->owner, sec2))
    return 1;

  return 0;
}