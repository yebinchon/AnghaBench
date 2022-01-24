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
typedef  int /*<<< orphan*/  zio_cksum_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EZFS_BADSTREAM ; 
 int SPA_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(libzfs_handle_t *hdl, int fd, void *buf, int ilen,
    boolean_t byteswap, zio_cksum_t *zc)
{
	char *cp = buf;
	int rv;
	int len = ilen;

	FUNC0(ilen <= SPA_MAXBLOCKSIZE);

	do {
		rv = FUNC4(fd, cp, len);
		cp += rv;
		len -= rv;
	} while (rv > 0);

	if (rv < 0 || len != 0) {
		FUNC6(hdl, FUNC1(TEXT_DOMAIN,
		    "failed to read from stream"));
		return (FUNC5(hdl, EZFS_BADSTREAM, FUNC1(TEXT_DOMAIN,
		    "cannot receive")));
	}

	if (zc) {
		if (byteswap)
			(void) FUNC2(buf, ilen, zc);
		else
			(void) FUNC3(buf, ilen, zc);
	}
	return (0);
}