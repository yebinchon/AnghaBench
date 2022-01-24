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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
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
 int ZFS_TYPE_BOOKMARK ; 
 int ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*,int*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int
FUNC4(libzfs_handle_t *hdl, const char *path, int type,
    boolean_t modifying)
{
	namecheck_err_t why;
	char what;

	if (FUNC1(path, &why, &what) != 0) {
		if (hdl != NULL) {
			switch (why) {
			case NAME_ERR_TOOLONG:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "name is too long"));
				break;

			case NAME_ERR_LEADING_SLASH:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "leading slash in name"));
				break;

			case NAME_ERR_EMPTY_COMPONENT:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "empty component in name"));
				break;

			case NAME_ERR_TRAILING_SLASH:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "trailing slash in name"));
				break;

			case NAME_ERR_INVALCHAR:
				FUNC3(hdl,
				    FUNC0(TEXT_DOMAIN, "invalid character "
				    "'%c' in name"), what);
				break;

			case NAME_ERR_MULTIPLE_DELIMITERS:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "multiple '@' and/or '#' delimiters in "
				    "name"));
				break;

			case NAME_ERR_NOLETTER:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "pool doesn't begin with a letter"));
				break;

			case NAME_ERR_RESERVED:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "name is reserved"));
				break;

			case NAME_ERR_DISKLIKE:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "reserved disk name"));
				break;

			default:
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "(%d) not defined"), why);
				break;
			}
		}

		return (0);
	}

	if (!(type & ZFS_TYPE_SNAPSHOT) && FUNC2(path, '@') != NULL) {
		if (hdl != NULL)
			FUNC3(hdl, FUNC0(TEXT_DOMAIN,
			    "snapshot delimiter '@' is not expected here"));
		return (0);
	}

	if (type == ZFS_TYPE_SNAPSHOT && FUNC2(path, '@') == NULL) {
		if (hdl != NULL)
			FUNC3(hdl, FUNC0(TEXT_DOMAIN,
			    "missing '@' delimiter in snapshot name"));
		return (0);
	}

	if (!(type & ZFS_TYPE_BOOKMARK) && FUNC2(path, '#') != NULL) {
		if (hdl != NULL)
			FUNC3(hdl, FUNC0(TEXT_DOMAIN,
			    "bookmark delimiter '#' is not expected here"));
		return (0);
	}

	if (type == ZFS_TYPE_BOOKMARK && FUNC2(path, '#') == NULL) {
		if (hdl != NULL)
			FUNC3(hdl, FUNC0(TEXT_DOMAIN,
			    "missing '#' delimiter in bookmark name"));
		return (0);
	}

	if (modifying && FUNC2(path, '%') != NULL) {
		if (hdl != NULL)
			FUNC3(hdl, FUNC0(TEXT_DOMAIN,
			    "invalid character %c in name"), '%');
		return (0);
	}

	return (-1);
}