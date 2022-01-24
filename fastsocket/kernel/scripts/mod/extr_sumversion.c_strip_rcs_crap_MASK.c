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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 
 unsigned int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC4(char *version)
{
	unsigned int len, full_len;

	if (FUNC3(version, "$Revision", FUNC2("$Revision")) != 0)
		return 0;

	/* Space for version string follows. */
	full_len = FUNC2(version) + FUNC2(version + FUNC2(version) + 1) + 2;

	/* Move string to start with version number: prefix will be
	 * $Revision$ or $Revision: */
	len = FUNC2("$Revision");
	if (version[len] == ':' || version[len] == '$')
		len++;
	while (FUNC0(version[len]))
		len++;
	FUNC1(version, version+len, full_len-len);
	full_len -= len;

	/* Preserve up to next whitespace. */
	len = 0;
	while (version[len] && !FUNC0(version[len]))
		len++;
	FUNC1(version + len, version + FUNC2(version),
		full_len - FUNC2(version));
	return 1;
}