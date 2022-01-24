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
typedef  TYPE_1__* fibnode_t ;
typedef  int /*<<< orphan*/  fibheap_t ;
struct TYPE_4__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

void *
FUNC1 (fibheap_t heap, fibnode_t node, void *data)
{
  return FUNC0 (heap, node, node->key, data);
}