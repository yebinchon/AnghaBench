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
struct io_ctl {int num_pages; scalar_t__* pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct io_ctl*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct io_ctl *io_ctl)
{
	int i;

	FUNC1(io_ctl);

	for (i = 0; i < io_ctl->num_pages; i++) {
		if (io_ctl->pages[i]) {
			FUNC0(io_ctl->pages[i]);
			FUNC3(io_ctl->pages[i]);
			FUNC2(io_ctl->pages[i]);
		}
	}
}