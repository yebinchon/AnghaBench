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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ APPND ; 
 scalar_t__ ARCHIVE ; 
 scalar_t__ ISPIPE ; 
 scalar_t__ ISREG ; 
 scalar_t__ ISTAPE ; 
 char* NM_TAR ; 
 scalar_t__ Oflag ; 
 int PAXPATHLEN ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ act ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 char* arcname ; 
 char* argv0 ; 
 scalar_t__ artyp ; 
 char* arvol ; 
 int done ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int lstrval ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  s_mask ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* stdn ; 
 char* stdo ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char*,int) ; 
 scalar_t__ vfpart ; 
 int /*<<< orphan*/  wr_trail ; 

int
FUNC11(void)
{
	static char *arcbuf;
	char buf[PAXPATHLEN+2];
	sigset_t o_mask;

	/*
	 * WE MUST CLOSE THE DEVICE. A lot of devices must see last close, (so
	 * things like writing EOF etc will be done) (Watch out ar_close() can
	 * also be called via a signal handler, so we must prevent a race.
	 */
	if (FUNC4(SIG_BLOCK, &s_mask, &o_mask) < 0)
		FUNC8(0, errno, "Unable to set signal mask");
	FUNC0();
	if (FUNC4(SIG_SETMASK, &o_mask, NULL) < 0)
		FUNC8(0, errno, "Unable to restore signal mask");

	if (done || !wr_trail || Oflag || FUNC5(NM_TAR, argv0) == 0)
		return(-1);

	FUNC9("\nATTENTION! %s archive volume change required.\n", argv0);

	/*
	 * if i/o is on stdin or stdout, we cannot reopen it (we do not know
	 * the name), the user will be forced to type it in.
	 */
	if (FUNC5(arcname, stdo) && FUNC5(arcname, stdn) && (artyp != ISREG)
	    && (artyp != ISPIPE)) {
		if (artyp == ISTAPE) {
			FUNC9("%s ready for archive tape volume: %d\n",
				arcname, arvol);
			FUNC9("Load the NEXT TAPE on the tape drive");
		} else {
			FUNC9("%s ready for archive volume: %d\n",
				arcname, arvol);
			FUNC9("Load the NEXT STORAGE MEDIA (if required)");
		}

		if ((act == ARCHIVE) || (act == APPND))
			FUNC9(" and make sure it is WRITE ENABLED.\n");
		else
			FUNC9("\n");

		for(;;) {
			FUNC9("Type \"y\" to continue, \".\" to quit %s,",
				argv0);
			FUNC9(" or \"s\" to switch to new device.\nIf you");
			FUNC9(" cannot change storage media, type \"s\"\n");
			FUNC9("Is the device ready and online? > ");

			if ((FUNC10(buf,sizeof(buf))<0) || !FUNC5(buf,".")){
				done = 1;
				lstrval = -1;
				FUNC9("Quitting %s!\n", argv0);
				vfpart = 0;
				return(-1);
			}

			if ((buf[0] == '\0') || (buf[1] != '\0')) {
				FUNC9("%s unknown command, try again\n",buf);
				continue;
			}

			switch (buf[0]) {
			case 'y':
			case 'Y':
				/*
				 * we are to continue with the same device
				 */
				if (FUNC1(arcname) >= 0)
					return(0);
				FUNC9("Cannot re-open %s, try again\n",
					arcname);
				continue;
			case 's':
			case 'S':
				/*
				 * user wants to open a different device
				 */
				FUNC9("Switching to a different archive\n");
				break;
			default:
				FUNC9("%s unknown command, try again\n",buf);
				continue;
			}
			break;
		}
	} else
		FUNC9("Ready for archive volume: %d\n", arvol);

	/*
	 * have to go to a different archive
	 */
	for (;;) {
		FUNC9("Input archive name or \".\" to quit %s.\n", argv0);
		FUNC9("Archive name > ");

		if ((FUNC10(buf, sizeof(buf)) < 0) || !FUNC5(buf, ".")) {
			done = 1;
			lstrval = -1;
			FUNC9("Quitting %s!\n", argv0);
			vfpart = 0;
			return(-1);
		}
		if (buf[0] == '\0') {
			FUNC9("Empty file name, try again\n");
			continue;
		}
		if (!FUNC5(buf, "..")) {
			FUNC9("Illegal file name: .. try again\n");
			continue;
		}
		if (FUNC7(buf) > PAXPATHLEN) {
			FUNC9("File name too long, try again\n");
			continue;
		}

		/*
		 * try to open new archive
		 */
		if (FUNC1(buf) >= 0) {
			FUNC2(arcbuf);
			if ((arcbuf = FUNC6(buf)) == NULL) {
				done = 1;
				lstrval = -1;
				FUNC3(0, "Cannot save archive name.");
				return(-1);
			}
			arcname = arcbuf;
			break;
		}
		FUNC9("Cannot open %s, try again\n", buf);
		continue;
	}
	return(0);
}