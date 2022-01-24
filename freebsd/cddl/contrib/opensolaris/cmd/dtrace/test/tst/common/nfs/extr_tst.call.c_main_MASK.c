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
typedef  int /*<<< orphan*/  unshareline ;
typedef  int /*<<< orphan*/  shareline ;

/* Variables and functions */
 int BUFSIZ ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(int argc, char **argv)
{
	char shareline[BUFSIZ], unshareline[BUFSIZ];
	int rc;

	(void) FUNC2(shareline, sizeof (shareline),
	    "mkdir /tmp/nfsv4test.%d ; share /tmp/nfsv4test.%d", FUNC1(),
	    FUNC1());
	(void) FUNC2(unshareline, sizeof (unshareline),
	    "unshare /tmp/nfsv4test.%d ; rmdir /tmp/nfsv4test.%d", FUNC1(),
	    FUNC1());

	(void) FUNC3(shareline);
	rc = FUNC0();
	(void) FUNC3(unshareline);

	return (rc);
}