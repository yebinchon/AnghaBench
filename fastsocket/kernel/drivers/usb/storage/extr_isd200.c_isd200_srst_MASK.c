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
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_REENABLE ; 
 int /*<<< orphan*/  ACTION_RESET ; 
 int ISD200_ERROR ; 
 int ISD200_GOOD ; 
 int ISD200_TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3( struct us_data *us ) 
{
	int retStatus = ISD200_GOOD;
	int transferStatus;

	FUNC0("Entering isd200_SRST\n");

	transferStatus = FUNC1( us, ACTION_RESET, NULL, 0 );

	/* check to see if this request failed */
	if (transferStatus != ISD200_TRANSPORT_GOOD) {
		FUNC0("   Error issuing SRST\n");
		retStatus = ISD200_ERROR;
	} else {
		/* delay 10ms to give the drive a chance to see it */
		FUNC2(10);

		transferStatus = FUNC1( us, ACTION_REENABLE, NULL, 0 );
		if (transferStatus != ISD200_TRANSPORT_GOOD) {
			FUNC0("   Error taking drive out of reset\n");
			retStatus = ISD200_ERROR;
		} else {
			/* delay 50ms to give the drive a chance to recover after SRST */
			FUNC2(50);
		}
	}

	FUNC0("Leaving isd200_srst %08X\n", retStatus);
	return retStatus;
}