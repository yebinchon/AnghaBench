#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int submodel; scalar_t__ recmask; scalar_t__ supported_rec_devices; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
#define  SUBMDL_ES1887 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3 (sb_devc * devc)
{
	/*
	 * Separate actions for ESS chips with a record mixer:
	 */
	if (FUNC2 (devc->submodel)) {
		switch (devc->submodel) {
		case SUBMDL_ES1887:
			/*
			 * Separate actions for ES1887:
			 * Change registers 7a and 1c to make the record mixer the
			 * actual recording source.
			 */
			FUNC1(devc, 0x7a, 0x18, 0x08);
			FUNC1(devc, 0x1c, 0x07, 0x07);
			break;
		};
		/*
		 * Call set_recmask for proper initialization
		 */
		devc->recmask = devc->supported_rec_devices;
		FUNC0(devc, 0);
		devc->recmask = 0;

		return 1;	/* We took care of recmask.				*/
	} else {
		return 0;	/* We didn't take care; caller do it	*/
	}
}