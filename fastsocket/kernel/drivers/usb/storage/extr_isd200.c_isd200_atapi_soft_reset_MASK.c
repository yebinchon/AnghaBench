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
 int /*<<< orphan*/  ACTION_SOFT_RESET ; 
 int ISD200_ERROR ; 
 int ISD200_GOOD ; 
 int ISD200_TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2( struct us_data *us ) 
{
	int retStatus = ISD200_GOOD;
	int transferStatus;

	FUNC0("Entering isd200_atapi_soft_reset\n");

	transferStatus = FUNC1( us, ACTION_SOFT_RESET, NULL, 0 );
	if (transferStatus != ISD200_TRANSPORT_GOOD) {
		FUNC0("   Error issuing Atapi Soft Reset\n");
		retStatus = ISD200_ERROR;
	}

	FUNC0("Leaving isd200_atapi_soft_reset %08X\n", retStatus);
	return retStatus;
}