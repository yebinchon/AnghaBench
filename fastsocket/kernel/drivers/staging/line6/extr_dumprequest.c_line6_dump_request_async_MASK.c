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
struct usb_line6 {int dummy; } ;
struct line6_dump_request {TYPE_1__* reqbufs; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct line6_dump_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct line6_dump_request*) ; 
 int FUNC2 (struct usb_line6*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct line6_dump_request *l6dr,
			     struct usb_line6 *line6, int num)
{
	int ret;
	FUNC1(l6dr);
	ret = FUNC2(line6, l6dr->reqbufs[num].buffer,
					   l6dr->reqbufs[num].length);

	if (ret < 0)
		FUNC0(l6dr);

	return ret;
}