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
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
#define  EINVAL 129 
#define  ENOTSUP 128 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_BADVERSION ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC6(libzfs_handle_t *hdl, const char *fs)
{
	int err;
	char errbuf[1024];

	(void) FUNC2(errbuf, sizeof (errbuf), FUNC0(TEXT_DOMAIN,
	    "cannot remap dataset '%s'"), fs);

	err = FUNC1(fs);

	if (err != 0) {
		switch (err) {
		case ENOTSUP:
			FUNC4(hdl, FUNC0(TEXT_DOMAIN,
			    "pool must be upgraded"));
			(void) FUNC3(hdl, EZFS_BADVERSION, errbuf);
			break;
		case EINVAL:
			(void) FUNC3(hdl, EZFS_BADTYPE, errbuf);
			break;
		default:
			(void) FUNC5(hdl, err, errbuf);
			break;
		}
	}

	return (err);
}