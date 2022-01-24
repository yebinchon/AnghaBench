#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct utimbuf {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_6__ {int type; char* name; char* path; } ;
typedef  TYPE_1__ GNode ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int OP_ARCHV ; 
 int OP_EXEC ; 
 int OP_JOIN ; 
 int OP_LIB ; 
 int OP_OPTIONAL ; 
 int OP_PHONY ; 
 int OP_SPECIAL ; 
 int OP_USE ; 
 int OP_USEBEFORE ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  now ; 
 int FUNC7 (char*,int,int) ; 
 int FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*,struct utimbuf*) ; 
 int FUNC11 (int,char*,int) ; 

void
FUNC12(GNode *gn, Boolean silent)
{
    int		  streamID;   	/* ID of stream opened to do the touch */
    struct utimbuf times;	/* Times for utime() call */

    if (gn->type & (OP_JOIN|OP_USE|OP_USEBEFORE|OP_EXEC|OP_OPTIONAL|
	OP_SPECIAL|OP_PHONY)) {
	/*
	 * .JOIN, .USE, .ZEROTIME and .OPTIONAL targets are "virtual" targets
	 * and, as such, shouldn't really be created.
	 */
	return;
    }

    if (!silent || FUNC2(gn)) {
	(void)FUNC5(stdout, "touch %s\n", gn->name);
	(void)FUNC4(stdout);
    }

    if (FUNC2(gn)) {
	return;
    }

    if (gn->type & OP_ARCHV) {
	FUNC0(gn);
    } else if (gn->type & OP_LIB) {
	FUNC1(gn);
    } else {
	char	*file = gn->path ? gn->path : gn->name;

	times.actime = times.modtime = now;
	if (FUNC10(file, &times) < 0){
	    streamID = FUNC7(file, O_RDWR | O_CREAT, 0666);

	    if (streamID >= 0) {
		char	c;

		/*
		 * Read and write a byte to the file to change the
		 * modification time, then close the file.
		 */
		if (FUNC8(streamID, &c, 1) == 1) {
		    (void)FUNC6(streamID, (off_t)0, SEEK_SET);
		    while (FUNC11(streamID, &c, 1) == -1 && errno == EAGAIN)
			continue;
		}

		(void)FUNC3(streamID);
	    } else {
		(void)FUNC5(stdout, "*** couldn't touch %s: %s",
			       file, FUNC9(errno));
		(void)FUNC4(stdout);
	    }
	}
    }
}