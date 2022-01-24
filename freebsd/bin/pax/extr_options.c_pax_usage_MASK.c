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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(void)
{
	(void)FUNC1("usage: pax [-cdnOvz] [-E limit] [-f archive] ", stderr);
	(void)FUNC1("[-s replstr] ... [-U user] ...", stderr);
	(void)FUNC1("\n	   [-G group] ... ", stderr);
	(void)FUNC1("[-T [from_date][,to_date]] ... ", stderr);
	(void)FUNC1("[pattern ...]\n", stderr);
	(void)FUNC1("       pax -r [-cdiknOuvzDYZ] [-E limit] ", stderr);
	(void)FUNC1("[-f archive] [-o options] ... \n", stderr);
	(void)FUNC1("	   [-p string] ... [-s replstr] ... ", stderr);
	(void)FUNC1("[-U user] ... [-G group] ...\n	   ", stderr);
	(void)FUNC1("[-T [from_date][,to_date]] ... ", stderr);
	(void)FUNC1(" [pattern ...]\n", stderr);
	(void)FUNC1("       pax -w [-dituvzHLOPX] [-b blocksize] ", stderr);
	(void)FUNC1("[ [-a] [-f archive] ] [-x format] \n", stderr);
	(void)FUNC1("	   [-B bytes] [-s replstr] ... ", stderr);
	(void)FUNC1("[-o options] ... [-U user] ...", stderr);
	(void)FUNC1("\n	   [-G group] ... ", stderr);
	(void)FUNC1("[-T [from_date][,to_date][/[c][m]]] ... ", stderr);
	(void)FUNC1("[file ...]\n", stderr);
	(void)FUNC1("       pax -r -w [-diklntuvDHLOPXYZ] ", stderr);
	(void)FUNC1("[-p string] ... [-s replstr] ...", stderr);
	(void)FUNC1("\n	   [-U user] ... [-G group] ... ", stderr);
	(void)FUNC1("[-T [from_date][,to_date][/[c][m]]] ... ", stderr);
	(void)FUNC1("\n	   [file ...] directory\n", stderr);
	FUNC0(1);
}