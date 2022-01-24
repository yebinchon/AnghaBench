#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fibheapkey_t ;
typedef  TYPE_2__* fibheap_t ;
struct TYPE_5__ {TYPE_1__* min; } ;
struct TYPE_4__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */

fibheapkey_t
FUNC0 (fibheap_t heap)
{
  /* If there is no min, we can't easily return it.  */
  if (heap->min == NULL)
    return 0;
  return heap->min->key;
}