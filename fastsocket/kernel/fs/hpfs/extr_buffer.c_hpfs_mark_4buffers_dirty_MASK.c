#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {TYPE_1__** bh; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC3(struct quad_buffer_head *qbh)
{
	FUNC0(("hpfs_mark_4buffers_dirty\n"));
	FUNC2(qbh->bh[0]->b_data, qbh->data, 512);
	FUNC2(qbh->bh[1]->b_data, qbh->data + 512, 512);
	FUNC2(qbh->bh[2]->b_data, qbh->data + 2 * 512, 512);
	FUNC2(qbh->bh[3]->b_data, qbh->data + 3 * 512, 512);
	FUNC1(qbh->bh[0]);
	FUNC1(qbh->bh[1]);
	FUNC1(qbh->bh[2]);
	FUNC1(qbh->bh[3]);
}