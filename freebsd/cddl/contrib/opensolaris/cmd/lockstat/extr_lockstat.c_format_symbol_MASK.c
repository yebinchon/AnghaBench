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
 char* FUNC0 (uintptr_t,uintptr_t*,size_t*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 char** g_pri_class ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static char *
FUNC3(char *buf, uintptr_t addr, int show_size)
{
	uintptr_t symoff;
	char *symname;
	size_t symsize;

	symname = FUNC0(addr, &symoff, &symsize);

	if (show_size && symoff == 0)
		(void) FUNC2(buf, "%s[%ld]", symname, (long)symsize);
	else if (symoff == 0)
		(void) FUNC2(buf, "%s", symname);
	else if (symoff < 16 && FUNC1(symname, "cpu[", 4) == 0)	/* CPU+PIL */
#ifdef illumos
		(void) sprintf(buf, "%s+%ld", symname, (long)symoff);
#else
		(void) FUNC2(buf, "%s+%s", symname, g_pri_class[(int)symoff]);
#endif
	else if (symoff <= symsize || (symoff < 256 && addr != symoff))
		(void) FUNC2(buf, "%s+0x%llx", symname,
		    (unsigned long long)symoff);
	else
		(void) FUNC2(buf, "0x%llx", (unsigned long long)addr);
	return (buf);
}