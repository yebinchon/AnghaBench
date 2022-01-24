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
struct line6_dump_request {int /*<<< orphan*/  timer; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct line6_dump_request*,void const*,size_t,int /*<<< orphan*/ ) ; 

int FUNC3(struct line6_dump_request *l6dr, const void *buf,
		       size_t len)
{
	int ret;
	ret = FUNC2(l6dr, buf, len, 0);
	if (ret < 0)
		return ret;
	FUNC1(&l6dr->wait);
	FUNC0(&l6dr->timer);
	return 0;
}