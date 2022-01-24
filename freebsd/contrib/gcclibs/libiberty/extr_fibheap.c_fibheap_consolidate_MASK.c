#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* fibnode_t ;
typedef  TYPE_2__* fibheap_t ;
struct TYPE_16__ {TYPE_1__* min; TYPE_1__* root; } ;
struct TYPE_15__ {int degree; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5 (fibheap_t heap)
{
  fibnode_t a[1 + 8 * sizeof (long)];
  fibnode_t w;
  fibnode_t y;
  fibnode_t x;
  int i;
  int d;
  int D;

  D = 1 + 8 * sizeof (long);

  FUNC4 (a, 0, sizeof (fibnode_t) * D);

  while ((w = heap->root) != NULL)
    {
      x = w;
      FUNC3 (heap, w);
      d = x->degree;
      while (a[d] != NULL)
	{
	  y = a[d];
	  if (FUNC0 (heap, x, y) > 0)
	    {
	      fibnode_t temp;
	      temp = x;
	      x = y;
	      y = temp;
	    }
	  FUNC2 (heap, y, x);
	  a[d] = NULL;
	  d++;
	}
      a[d] = x;
    }
  heap->min = NULL;
  for (i = 0; i < D; i++)
    if (a[i] != NULL)
      {
	FUNC1 (heap, a[i]);
	if (heap->min == NULL || FUNC0 (heap, a[i], heap->min) < 0)
	  heap->min = a[i];
      }
}