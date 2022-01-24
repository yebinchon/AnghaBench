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
struct usX2Ydev {int /*<<< orphan*/  In04urb; int /*<<< orphan*/  In04Buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  In04WaitQueue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  i_usX2Y_In04Int ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usX2Ydev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct usX2Ydev *usX2Y)
{
	if (! (usX2Y->In04urb = FUNC2(0, GFP_KERNEL)))
		return -ENOMEM;

	if (! (usX2Y->In04Buf = FUNC1(21, GFP_KERNEL))) {
		FUNC4(usX2Y->In04urb);
		return -ENOMEM;
	}
	 
	FUNC0(&usX2Y->In04WaitQueue);
	FUNC3(usX2Y->In04urb, usX2Y->dev, FUNC5(usX2Y->dev, 0x4),
			 usX2Y->In04Buf, 21,
			 i_usX2Y_In04Int, usX2Y,
			 10);
	return FUNC6(usX2Y->In04urb, GFP_KERNEL);
}