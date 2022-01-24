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
struct line6_dump_request {TYPE_1__* reqbufs; } ;
struct TYPE_2__ {size_t length; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 

int FUNC2(struct line6_dump_request *l6dr, const void *buf,
			  size_t len, int num)
{
	l6dr->reqbufs[num].buffer = FUNC0(len, GFP_KERNEL);
	if (l6dr->reqbufs[num].buffer == NULL)
		return -ENOMEM;
	FUNC1(l6dr->reqbufs[num].buffer, buf, len);
	l6dr->reqbufs[num].length = len;
	return 0;
}