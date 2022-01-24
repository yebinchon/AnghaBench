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
struct port_input {int /*<<< orphan*/  buflen; int /*<<< orphan*/  fd; int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  drop_buf ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct port_input *pi)
{
	char drop_buf[2000];

	if (pi->buf == NULL) {
		if ((pi->buf = FUNC0(0)) == NULL) {
			(void)FUNC2(pi->fd, drop_buf, sizeof(drop_buf),
			    0, NULL, NULL);
			return (-1);
		}
		pi->buflen = FUNC1(0);
	}
	return (0);
}