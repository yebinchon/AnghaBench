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
struct TYPE_4__ {void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIBHEAPKEY_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

void *
FUNC2 (fibheap_t heap, fibnode_t node)
{
  void *ret = node->data;

  /* To perform delete, we just make it the min key, and extract.  */
  FUNC1 (heap, node, FIBHEAPKEY_MIN);
  FUNC0 (heap);

  return ret;
}