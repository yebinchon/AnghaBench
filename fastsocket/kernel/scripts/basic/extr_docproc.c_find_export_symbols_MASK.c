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
struct symfile {int dummy; } ;
typedef  int /*<<< orphan*/  real_filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXLINESZ ; 
 int PATH_MAX ; 
 struct symfile* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct symfile*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (char) ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* srctree ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 char* FUNC14 (char*,char*) ; 

__attribute__((used)) static void FUNC15(char * filename)
{
	FILE * fp;
	struct symfile *sym;
	char line[MAXLINESZ];
	if (FUNC5(filename) == NULL) {
		char real_filename[PATH_MAX + 1];
		FUNC10(real_filename, 0, sizeof(real_filename));
		FUNC13(real_filename, srctree, PATH_MAX);
		FUNC13(real_filename, "/", PATH_MAX - FUNC12(real_filename));
		FUNC13(real_filename, filename,
				PATH_MAX - FUNC12(real_filename));
		sym = FUNC0(filename);
		fp = FUNC6(real_filename, "r");
		if (fp == NULL)
		{
			FUNC7(stderr, "docproc: ");
			FUNC11(real_filename);
			FUNC2(1);
		}
		while (FUNC4(line, MAXLINESZ, fp)) {
			char *p;
			char *e;
			if (((p = FUNC14(line, "EXPORT_SYMBOL_GPL")) != NULL) ||
                            ((p = FUNC14(line, "EXPORT_SYMBOL")) != NULL)) {
				/* Skip EXPORT_SYMBOL{_GPL} */
				while (FUNC8(*p) || *p == '_')
					p++;
				/* Remove parentheses & additional whitespace */
				while (FUNC9(*p))
					p++;
				if (*p != '(')
					continue; /* Syntax error? */
				else
					p++;
				while (FUNC9(*p))
					p++;
				e = p;
				while (FUNC8(*e) || *e == '_')
					e++;
				*e = '\0';
				FUNC1(sym, p);
			}
		}
		FUNC3(fp);
	}
}