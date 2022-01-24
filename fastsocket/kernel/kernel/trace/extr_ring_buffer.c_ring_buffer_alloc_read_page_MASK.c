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
struct ring_buffer {int dummy; } ;
typedef  void buffer_data_page ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void *FUNC2(struct ring_buffer *buffer)
{
	struct buffer_data_page *bpage;
	unsigned long addr;

	addr = FUNC0(GFP_KERNEL);
	if (!addr)
		return NULL;

	bpage = (void *)addr;

	FUNC1(bpage);

	return bpage;
}