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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 char* line ; 
 char* linep ; 
 int /*<<< orphan*/  linno ; 

__attribute__((used)) static int
FUNC2(FILE *infp)
{
	char *p;

	if (FUNC1(line, 1024, infp) == NULL)
		return 0;
	for (p = line ; *p != '#' && *p != '\n' && *p != '\0' ; p++);
	while (p > line && (p[-1] == ' ' || p[-1] == '\t'))
		p--;
	*p = '\0';
	linep = line;
	linno++;
	if (p - line > BUFLEN)
		FUNC0("Line too long");
	return 1;
}