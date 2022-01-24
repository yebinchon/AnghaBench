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
struct bdi_writeback {int /*<<< orphan*/  b_io; int /*<<< orphan*/  b_dirty; int /*<<< orphan*/  b_more_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*) ; 

__attribute__((used)) static void FUNC2(struct bdi_writeback *wb, unsigned long *older_than_this)
{
	FUNC0(&wb->b_more_io, &wb->b_io);
	FUNC1(&wb->b_dirty, &wb->b_io, older_than_this);
}