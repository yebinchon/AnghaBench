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
struct c67x00_sie {int sie_num; int mode; struct c67x00_device* dev; int /*<<< orphan*/  lock; } ;
struct c67x00_device {TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  sie_config; } ;

/* Variables and functions */
#define  C67X00_SIE_HOST 129 
#define  C67X00_SIE_UNUSED 128 
 int /*<<< orphan*/  FUNC0 (struct c67x00_sie*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct c67x00_sie*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct c67x00_sie *sie,
			     struct c67x00_device *dev, int sie_num)
{
	FUNC5(&sie->lock);
	sie->dev = dev;
	sie->sie_num = sie_num;
	sie->mode = FUNC1(dev->pdata->sie_config, sie_num);

	switch (sie->mode) {
	case C67X00_SIE_HOST:
		FUNC0(sie);
		break;

	case C67X00_SIE_UNUSED:
		FUNC3(FUNC4(sie),
			 "Not using SIE %d as requested\n", sie->sie_num);
		break;

	default:
		FUNC2(FUNC4(sie),
			"Unsupported configuration: 0x%x for SIE %d\n",
			sie->mode, sie->sie_num);
		break;
	}
}