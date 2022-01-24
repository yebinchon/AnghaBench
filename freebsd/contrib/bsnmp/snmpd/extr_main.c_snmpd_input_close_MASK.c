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
struct port_input {int fd; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct port_input *pi)
{
	if (pi->id != NULL) {
		FUNC1(pi->id);
		pi->id = NULL;
	}
	if (pi->fd >= 0) {
		(void)FUNC0(pi->fd);
		pi->fd = -1;
	}
	if (pi->buf != NULL) {
		FUNC2(pi->buf);
		pi->buf = NULL;
	}
}