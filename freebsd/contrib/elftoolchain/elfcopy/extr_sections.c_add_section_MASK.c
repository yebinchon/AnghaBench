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
struct stat {int st_size; } ;
struct sec_add {char* name; int size; int /*<<< orphan*/ * content; } ;
struct elfcopy {int /*<<< orphan*/  flags; int /*<<< orphan*/  v_sadd; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SEC_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sec_add*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  sadd_list ; 
 int FUNC8 (char const*,struct stat*) ; 
 char* FUNC9 (char const*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 

void
FUNC11(struct elfcopy *ecp, const char *arg)
{
	struct sec_add	*sa;
	struct stat	 sb;
	const char	*s, *fn;
	FILE		*fp;
	int		 len;

	if ((s = FUNC9(arg, '=')) == NULL)
		FUNC2(EXIT_FAILURE,
		    "illegal format for --add-section option");
	if ((sa = FUNC7(sizeof(*sa))) == NULL)
		FUNC1(EXIT_FAILURE, "malloc failed");

	len = s - arg;
	if ((sa->name = FUNC7(len + 1)) == NULL)
		FUNC1(EXIT_FAILURE, "malloc failed");
	FUNC10(sa->name, arg, len);
	sa->name[len] = '\0';

	fn = s + 1;
	if (FUNC8(fn, &sb) == -1)
		FUNC1(EXIT_FAILURE, "stat failed");
	sa->size = sb.st_size;
	if (sa->size > 0) {
		if ((sa->content = FUNC7(sa->size)) == NULL)
			FUNC1(EXIT_FAILURE, "malloc failed");
		if ((fp = FUNC5(fn, "r")) == NULL)
			FUNC1(EXIT_FAILURE, "can not open %s", fn);
		if (FUNC6(sa->content, 1, sa->size, fp) == 0 ||
		    FUNC4(fp))
			FUNC1(EXIT_FAILURE, "fread failed");
		FUNC3(fp);
	} else
		sa->content = NULL;

	FUNC0(&ecp->v_sadd, sa, sadd_list);
	ecp->flags |= SEC_ADD;
}