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
struct ubifs_info {int ro_media; scalar_t__ no_chk_data_crc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void FUNC2(struct ubifs_info *c, int err)
{
	if (!c->ro_media) {
		c->ro_media = 1;
		c->no_chk_data_crc = 0;
		FUNC1("switched to read-only mode, error %d", err);
		FUNC0();
	}
}