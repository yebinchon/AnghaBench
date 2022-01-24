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
struct ds2482_data {int w1_count; int /*<<< orphan*/  access_lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2482_CMD_1WIRE_READ_BYTE ; 
 int /*<<< orphan*/  DS2482_PTR_CODE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct ds2482_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ds2482_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ds2482_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ds2482_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC7(void *data)
{
	struct ds2482_w1_chan *pchan = data;
	struct ds2482_data    *pdev = pchan->pdev;
	int result;

	FUNC5(&pdev->access_lock);

	/* Select the channel */
	FUNC3(pdev);
	if (pdev->w1_count > 1)
		FUNC2(pdev, pchan->channel);

	/* Send the read byte command */
	FUNC1(pdev, DS2482_CMD_1WIRE_READ_BYTE);

	/* Wait until 1WB == 0 */
	FUNC3(pdev);

	/* Select the data register */
	FUNC0(pdev, DS2482_PTR_CODE_DATA);

	/* Read the data byte */
	result = FUNC4(pdev->client);

	FUNC6(&pdev->access_lock);

	return result;
}