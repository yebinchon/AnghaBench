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
struct authuser {char* password; int /*<<< orphan*/ * host; int /*<<< orphan*/ * login; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DP ; 
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct authuser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  authusers ; 
 struct authuser* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  next ; 
 char* FUNC9 (char*) ; 
 void* FUNC10 (char**,char*) ; 

void
FUNC11(const char *path)
{
	char line[2048];
	struct authuser *au;
	FILE *a;
	char *data;
	int lineno = 0;

	a = FUNC8(path, "r");
	if (a == NULL) {
		FUNC3(EX_NOINPUT, "can not open auth file `%s'", path);
		/* NOTREACHED */
	}

	while (!FUNC6(a)) {
		if (FUNC7(line, sizeof(line), a) == NULL)
			break;
		lineno++;

		FUNC2(line);

		/* We hit a comment */
		if (*line == '#')
			continue;
		/* Ignore empty lines */
		if (*line == 0)
			continue;

		au = FUNC1(1, sizeof(*au));
		if (au == NULL)
			FUNC3(EX_OSERR, "calloc()");

		data = FUNC9(line);
		au->login = FUNC10(&data, "|");
		au->host = FUNC10(&data, DP);
		au->password = data;

		if (au->login == NULL ||
		    au->host == NULL ||
		    au->password == NULL) {
			FUNC4(EX_CONFIG, "syntax error in authfile %s:%d", path, lineno);
			/* NOTREACHED */
		}

		FUNC0(&authusers, au, next);
	}

	FUNC5(a);
}