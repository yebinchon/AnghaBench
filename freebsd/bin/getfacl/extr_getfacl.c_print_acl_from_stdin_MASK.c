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
typedef  int /*<<< orphan*/  pathname ;
typedef  int /*<<< orphan*/  acl_type_t ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(acl_type_t type, int hflag, int iflag, int nflag,
    int qflag, int vflag)
{
	char	*p, pathname[PATH_MAX];
	int	carried_error = 0;

	while (FUNC0(pathname, (int)sizeof(pathname), stdin)) {
		if ((p = FUNC2(pathname, '\n')) != NULL)
			*p = '\0';
		if (FUNC1(pathname, type, hflag, iflag, nflag,
		    qflag, vflag) == -1) {
			carried_error = -1;
		}
	}

	return(carried_error);
}