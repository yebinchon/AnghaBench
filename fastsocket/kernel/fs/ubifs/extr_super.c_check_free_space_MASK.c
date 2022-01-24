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
struct TYPE_2__ {scalar_t__ total_free; scalar_t__ total_dirty; } ;
struct ubifs_info {scalar_t__ dark_wm; TYPE_1__ lst; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct ubifs_info *c)
{
	FUNC2(c->dark_wm > 0);
	if (c->lst.total_free + c->lst.total_dirty < c->dark_wm) {
		FUNC3("insufficient free space to mount in read/write mode");
		FUNC0(c);
		FUNC1(c);
		return -ENOSPC;
	}
	return 0;
}