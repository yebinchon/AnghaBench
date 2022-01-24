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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* FUNC0 (int) ; 
 int RRexpect ; 
 int RRtotal ; 
 int SRexpect ; 
 int SRtotal ; 
 int /*<<< orphan*/  exit_code ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* myname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
    FUNC1(stderr, "%s: ", myname);
    if (SRtotal == 1)
	FUNC1(stderr, "1 shift/reduce conflict");
    else if (SRtotal > 1)
	FUNC1(stderr, "%d shift/reduce conflicts", SRtotal);

    if (SRtotal && RRtotal)
	FUNC1(stderr, ", ");

    if (RRtotal == 1)
	FUNC1(stderr, "1 reduce/reduce conflict");
    else if (RRtotal > 1)
	FUNC1(stderr, "%d reduce/reduce conflicts", RRtotal);

    FUNC1(stderr, ".\n");

    if (SRexpect >= 0 && SRtotal != SRexpect)
    {
	FUNC1(stderr, "%s: ", myname);
	FUNC1(stderr, "expected %d shift/reduce conflict%s.\n",
		SRexpect, FUNC0(SRexpect));
	exit_code = EXIT_FAILURE;
    }
    if (RRexpect >= 0 && RRtotal != RRexpect)
    {
	FUNC1(stderr, "%s: ", myname);
	FUNC1(stderr, "expected %d reduce/reduce conflict%s.\n",
		RRexpect, FUNC0(RRexpect));
	exit_code = EXIT_FAILURE;
    }
}