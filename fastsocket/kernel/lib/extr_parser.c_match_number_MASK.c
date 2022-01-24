#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int to; int from; } ;
typedef  TYPE_1__ substring_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int FUNC4(substring_t *s, int *result, int base)
{
	char *endp;
	char *buf;
	int ret;

	buf = FUNC1(s->to - s->from + 1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	FUNC2(buf, s->from, s->to - s->from);
	buf[s->to - s->from] = '\0';
	*result = FUNC3(buf, &endp, base);
	ret = 0;
	if (endp == buf)
		ret = -EINVAL;
	FUNC0(buf);
	return ret;
}