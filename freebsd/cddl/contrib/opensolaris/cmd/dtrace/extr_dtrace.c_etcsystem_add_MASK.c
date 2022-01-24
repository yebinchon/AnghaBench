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
typedef  int /*<<< orphan*/  mods ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int FUNC0 (int /*<<< orphan*/ ,char const**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_dtp ; 
 char const** g_etc ; 
 char const* g_etcbegin ; 
 char const* g_etcend ; 
 int /*<<< orphan*/  g_etcfile ; 
 int /*<<< orphan*/  g_ofile ; 
 int /*<<< orphan*/ * g_ofp ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	const char *mods[20];
	int nmods, line;

	if ((g_ofp = FUNC4(g_ofile = g_etcfile, "a")) == NULL)
		FUNC2("failed to open output file '%s'", g_ofile);

	FUNC5("%s\n", g_etcbegin);

	for (line = 0; g_etc[line] != NULL; line++)
		FUNC5("%s\n", g_etc[line]);

	nmods = FUNC0(g_dtp, mods,
	    sizeof (mods) / sizeof (char *) - 1);

	if (nmods >= sizeof (mods) / sizeof (char *))
		FUNC2("unexpectedly large number of modules!");

	mods[nmods++] = "dtrace";

	for (line = 0; line < nmods; line++)
		FUNC5("forceload: drv/%s\n", mods[line]);

	FUNC5("%s\n", g_etcend);

	if (FUNC3(g_ofp) == EOF)
		FUNC2("failed to close output file '%s'", g_ofile);

	FUNC1("added forceload directives to %s\n", g_ofile);
}