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
 int /*<<< orphan*/  SYSTEM__SYSLOG_CONSOLE ; 
 int /*<<< orphan*/  SYSTEM__SYSLOG_MOD ; 
 int /*<<< orphan*/  SYSTEM__SYSLOG_READ ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int type)
{
	int rc;

	rc = FUNC0(type);
	if (rc)
		return rc;

	switch (type) {
	case 3:		/* Read last kernel messages */
	case 10:	/* Return size of the log buffer */
		rc = FUNC1(current, SYSTEM__SYSLOG_READ);
		break;
	case 6:		/* Disable logging to console */
	case 7:		/* Enable logging to console */
	case 8:		/* Set level of messages printed to console */
		rc = FUNC1(current, SYSTEM__SYSLOG_CONSOLE);
		break;
	case 0:		/* Close log */
	case 1:		/* Open log */
	case 2:		/* Read from log */
	case 4:		/* Read/clear last kernel messages */
	case 5:		/* Clear ring buffer */
	default:
		rc = FUNC1(current, SYSTEM__SYSLOG_MOD);
		break;
	}
	return rc;
}