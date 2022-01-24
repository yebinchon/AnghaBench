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
typedef  int namecheck_err_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
#define  NAME_ERR_DISKLIKE 136 
#define  NAME_ERR_EMPTY_COMPONENT 135 
#define  NAME_ERR_INVALCHAR 134 
#define  NAME_ERR_LEADING_SLASH 133 
#define  NAME_ERR_MULTIPLE_DELIMITERS 132 
#define  NAME_ERR_NOLETTER 131 
#define  NAME_ERR_RESERVED 130 
#define  NAME_ERR_TOOLONG 129 
#define  NAME_ERR_TRAILING_SLASH 128 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*,int*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

boolean_t
FUNC5(libzfs_handle_t *hdl, boolean_t isopen, const char *pool)
{
	namecheck_err_t why;
	char what;
	int ret;

	ret = FUNC1(pool, &why, &what);

	/*
	 * The rules for reserved pool names were extended at a later point.
	 * But we need to support users with existing pools that may now be
	 * invalid.  So we only check for this expanded set of names during a
	 * create (or import), and only in userland.
	 */
	if (ret == 0 && !isopen &&
	    (FUNC3(pool, "mirror", 6) == 0 ||
	    FUNC3(pool, "raidz", 5) == 0 ||
	    FUNC3(pool, "spare", 5) == 0 ||
	    FUNC2(pool, "log") == 0)) {
		if (hdl != NULL)
			FUNC4(hdl,
			    FUNC0(TEXT_DOMAIN, "name is reserved"));
		return (B_FALSE);
	}


	if (ret != 0) {
		if (hdl != NULL) {
			switch (why) {
			case NAME_ERR_TOOLONG:
				FUNC4(hdl,
				    FUNC0(TEXT_DOMAIN, "name is too long"));
				break;

			case NAME_ERR_INVALCHAR:
				FUNC4(hdl,
				    FUNC0(TEXT_DOMAIN, "invalid character "
				    "'%c' in pool name"), what);
				break;

			case NAME_ERR_NOLETTER:
				FUNC4(hdl, FUNC0(TEXT_DOMAIN,
				    "name must begin with a letter"));
				break;

			case NAME_ERR_RESERVED:
				FUNC4(hdl, FUNC0(TEXT_DOMAIN,
				    "name is reserved"));
				break;

			case NAME_ERR_DISKLIKE:
				FUNC4(hdl, FUNC0(TEXT_DOMAIN,
				    "pool name is reserved"));
				break;

			case NAME_ERR_LEADING_SLASH:
				FUNC4(hdl, FUNC0(TEXT_DOMAIN,
				    "leading slash in name"));
				break;

			case NAME_ERR_EMPTY_COMPONENT:
				FUNC4(hdl, FUNC0(TEXT_DOMAIN,
				    "empty component in name"));
				break;

			case NAME_ERR_TRAILING_SLASH:
				FUNC4(hdl, FUNC0(TEXT_DOMAIN,
				    "trailing slash in name"));
				break;

			case NAME_ERR_MULTIPLE_DELIMITERS:
				FUNC4(hdl, FUNC0(TEXT_DOMAIN,
				    "multiple '@' and/or '#' delimiters in "
				    "name"));
				break;

			default:
				FUNC4(hdl, FUNC0(TEXT_DOMAIN,
				    "(%d) not defined"), why);
				break;
			}
		}
		return (B_FALSE);
	}

	return (B_TRUE);
}