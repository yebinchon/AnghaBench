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
typedef  int u8 ;
struct ds2482_w1_chan {int /*<<< orphan*/  channel; struct ds2482_data* pdev; } ;
struct ds2482_data {int w1_count; int /*<<< orphan*/  access_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2482_CMD_1WIRE_RESET ; 
 int /*<<< orphan*/  DS2482_CMD_WRITE_CONFIG ; 
 int DS2482_REG_STS_PPD ; 
 int DS2482_REG_STS_RST ; 
 int FUNC0 (struct ds2482_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ds2482_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ds2482_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ds2482_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC6(void *data)
{
	struct ds2482_w1_chan *pchan = data;
	struct ds2482_data    *pdev = pchan->pdev;
	int err;
	u8 retval = 1;

	FUNC4(&pdev->access_lock);

	/* Select the channel */
	FUNC3(pdev);
	if (pdev->w1_count > 1)
		FUNC2(pdev, pchan->channel);

	/* Send the reset command */
	err = FUNC0(pdev, DS2482_CMD_1WIRE_RESET);
	if (err >= 0) {
		/* Wait until the reset is complete */
		err = FUNC3(pdev);
		retval = !(err & DS2482_REG_STS_PPD);

		/* If the chip did reset since detect, re-config it */
		if (err & DS2482_REG_STS_RST)
			FUNC1(pdev, DS2482_CMD_WRITE_CONFIG,
					     0xF0);
	}

	FUNC5(&pdev->access_lock);

	return retval;
}