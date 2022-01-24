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
struct module {char** markers; int nmarkers; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char** FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (char**,int) ; 

__attribute__((used)) static void FUNC3(struct module *mod, const char *name, const char *fmt)
{
	char *line = NULL;
	FUNC1(&line, "%s\t%d\t%s\n", name, mod->name, fmt);
	FUNC0(line);

	mod->markers = FUNC0(FUNC2(mod->markers, ((mod->nmarkers + 1) *
						     sizeof mod->markers[0])));
	mod->markers[mod->nmarkers++] = line;
}