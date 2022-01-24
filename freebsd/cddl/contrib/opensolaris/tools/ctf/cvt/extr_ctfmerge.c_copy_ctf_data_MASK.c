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
typedef  int /*<<< orphan*/  tdata_t ;

/* Variables and functions */
 int CTF_COMPRESS ; 
 int CTF_SWAP_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  read_ctf_save_cb ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  tmpname ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(char *srcfile, char *destfile, int keep_stabs)
{
	tdata_t *srctd;

	if (FUNC2(&srcfile, 1, NULL, read_ctf_save_cb, &srctd, 1) == 0)
		FUNC5("No CTF data found in source file %s\n", srcfile);

	tmpname = FUNC1(destfile, ".ctf");
	FUNC6(srctd, destfile, tmpname, CTF_COMPRESS | CTF_SWAP_BYTES | keep_stabs);
	if (FUNC3(tmpname, destfile) != 0) {
		FUNC5("Couldn't rename temp file %s to %s", tmpname,
		    destfile);
	}
	FUNC0(tmpname);
	FUNC4(srctd);
}