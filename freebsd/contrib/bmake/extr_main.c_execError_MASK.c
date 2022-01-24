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
struct iovec {int dummy; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ errno ; 
 char* progname ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (int,struct iovec*,int) ; 

void
FUNC3(const char *af, const char *av)
{
#ifdef USE_IOVEC
	int i = 0;
	struct iovec iov[8];
#define IOADD(s) \
	(void)(iov[i].iov_base = UNCONST(s), \
	    iov[i].iov_len = strlen(iov[i].iov_base), \
	    i++)
#else
#define	IOADD(s) (void)write(2, s, strlen(s))
#endif

	IOADD(progname);
	IOADD(": ");
	IOADD(af);
	IOADD("(");
	IOADD(av);
	IOADD(") failed (");
	IOADD(FUNC1(errno));
	IOADD(")\n");

#ifdef USE_IOVEC
	while (writev(2, iov, 8) == -1 && errno == EAGAIN)
	    continue;
#endif
}