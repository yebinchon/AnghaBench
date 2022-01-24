#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* fibnode_t ;
typedef  int /*<<< orphan*/  fibheap_t ;
struct TYPE_5__ {int mark; struct TYPE_5__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1 (fibheap_t heap, fibnode_t y)
{
  fibnode_t z;

  while ((z = y->parent) != NULL)
    {
      if (y->mark == 0)
	{
	  y->mark = 1;
	  return;
	}
      else
	{
	  FUNC0 (heap, y, z);
	  y = z;
	}
    }
}