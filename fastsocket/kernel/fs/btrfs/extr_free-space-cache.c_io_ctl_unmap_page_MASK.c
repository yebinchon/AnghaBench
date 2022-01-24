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
struct io_ctl {int /*<<< orphan*/ * orig; int /*<<< orphan*/ * cur; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct io_ctl *io_ctl)
{
	if (io_ctl->cur) {
		FUNC0(io_ctl->page);
		io_ctl->cur = NULL;
		io_ctl->orig = NULL;
	}
}