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

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  module ; 
 int /*<<< orphan*/ * ntpd_fd ; 
 int /*<<< orphan*/  ntpd_input ; 
 int /*<<< orphan*/  ntpd_sock ; 
 int /*<<< orphan*/  oid_ntpMIB ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_index ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(void)
{

	if (FUNC1() != -1) {
		ntpd_fd = FUNC0(ntpd_sock, ntpd_input, NULL, module);
		if (ntpd_fd == NULL) {
			FUNC3(LOG_ERR, "fd_select failed on ntpd socket: %m");
			return;
		}
	}
	reg_index = FUNC2(&oid_ntpMIB, "The MIB for NTP.", module);
}