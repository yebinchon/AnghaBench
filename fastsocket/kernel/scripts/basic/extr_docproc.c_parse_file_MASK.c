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
 int MAXLINESZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(FILE *infile)
{
	char line[MAXLINESZ];
	char * s;
	while (FUNC4(line, MAXLINESZ, infile)) {
		if (line[0] == '!') {
			s = line + 2;
			switch (line[1]) {
				case 'E':
					while (*s && !FUNC6(*s)) s++;
					*s = '\0';
					FUNC2(line+2);
					break;
				case 'I':
					while (*s && !FUNC6(*s)) s++;
					*s = '\0';
					FUNC5(line+2);
					break;
				case 'D':
					while (*s && !FUNC6(*s)) s++;
                                        *s = '\0';
                                        FUNC8(line+2);
                                        break;
				case 'F':
					/* filename */
					while (*s && !FUNC6(*s)) s++;
					*s++ = '\0';
                                        /* function names */
					while (FUNC6(*s))
						s++;
					FUNC7(line +2, s);
					break;
				case 'P':
					/* filename */
					while (*s && !FUNC6(*s)) s++;
					*s++ = '\0';
					/* DOC: section name */
					while (FUNC6(*s))
						s++;
					FUNC1(line + 2, s);
					break;
				default:
					FUNC0(line);
			}
		}
		else {
			FUNC0(line);
		}
	}
	FUNC3(stdout);
}