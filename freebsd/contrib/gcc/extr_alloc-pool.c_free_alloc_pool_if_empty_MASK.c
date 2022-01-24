#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* alloc_pool ;
struct TYPE_4__ {scalar_t__ elts_free; scalar_t__ elts_allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1 (alloc_pool *pool)
{
  if ((*pool)->elts_free == (*pool)->elts_allocated)
    {
      FUNC0 (*pool);
      *pool = NULL;
    }
}