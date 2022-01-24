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
struct sddr09_card_info {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned char LUNBITS ; 
 int /*<<< orphan*/  SDDR09_WP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct us_data*,unsigned char*) ; 

__attribute__((used)) static int
FUNC2(struct us_data *us, struct sddr09_card_info *info) {
	int result;
	unsigned char status;

	result = FUNC1(us, &status);
	if (result) {
		FUNC0("sddr09_get_wp: read_status fails\n");
		return result;
	}
	FUNC0("sddr09_get_wp: status 0x%02X", status);
	if ((status & 0x80) == 0) {
		info->flags |= SDDR09_WP;	/* write protected */
		FUNC0(" WP");
	}
	if (status & 0x40)
		FUNC0(" Ready");
	if (status & LUNBITS)
		FUNC0(" Suspended");
	if (status & 0x1)
		FUNC0(" Error");
	FUNC0("\n");
	return 0;
}