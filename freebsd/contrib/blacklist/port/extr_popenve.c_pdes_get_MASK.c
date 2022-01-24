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
struct pid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_CLOEXEC ; 
 int SOCK_CLOEXEC ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 struct pid* FUNC2 (int) ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*,char) ; 

__attribute__((used)) static struct pid *
FUNC8(int *pdes, const char **type)
{
	struct pid *cur;
	int flags = FUNC6(*type, 'e') ? O_CLOEXEC : 0;
	int serrno;

	if (FUNC6(*type, '+')) {
#ifndef SOCK_CLOEXEC
#define SOCK_CLOEXEC 0
#endif
		int stype = flags ? (SOCK_STREAM | SOCK_CLOEXEC) : SOCK_STREAM;
		*type = "r+";
		if (FUNC5(AF_LOCAL, stype, 0, pdes) < 0)
			return NULL;
#if SOCK_CLOEXEC == 0
		FUNC1(pdes[0], F_SETFD, FD_CLOEXEC);
		FUNC1(pdes[1], F_SETFD, FD_CLOEXEC);
#endif
	} else  {
		*type = FUNC7(*type, 'r') ? "r" : "w";
#if SOCK_CLOEXEC != 0
		if (pipe2(pdes, flags) == -1)
			return NULL;
#else
		if (FUNC3(pdes) == -1)
			return NULL;
		FUNC1(pdes[0], F_SETFL, FUNC1(pdes[0], F_GETFL) | flags);
		FUNC1(pdes[1], F_SETFL, FUNC1(pdes[1], F_GETFL) | flags);
#endif
	}

	if ((cur = FUNC2(sizeof(*cur))) != NULL)
		return cur;
	serrno = errno;
	(void)FUNC0(pdes[0]);
	(void)FUNC0(pdes[1]);
	errno = serrno;
	return NULL;
}