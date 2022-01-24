#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ fd; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 scalar_t__ el ; 
 char* FUNC0 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* parsefile ; 
 int /*<<< orphan*/  parsenextc ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(void)
{
	int nr;
	parsenextc = parsefile->buf;

retry:
#ifndef NO_HISTORY
	if (parsefile->fd == 0 && el) {
		static const char *rl_cp;
		static int el_len;

		if (rl_cp == NULL) {
			FUNC1(el);
			rl_cp = FUNC0(el, &el_len);
		}
		if (rl_cp == NULL)
			nr = el_len == 0 ? 0 : -1;
		else {
			nr = el_len;
			if (nr > BUFSIZ)
				nr = BUFSIZ;
			FUNC3(parsefile->buf, rl_cp, nr);
			if (nr != el_len) {
				el_len -= nr;
				rl_cp += nr;
			} else
				rl_cp = NULL;
		}
	} else
#endif
		nr = FUNC5(parsefile->fd, parsefile->buf, BUFSIZ);

	if (nr <= 0) {
                if (nr < 0) {
                        if (errno == EINTR)
                                goto retry;
                        if (parsefile->fd == 0 && errno == EWOULDBLOCK) {
                                int flags = FUNC2(0, F_GETFL, 0);
                                if (flags >= 0 && flags & O_NONBLOCK) {
                                        flags &=~ O_NONBLOCK;
                                        if (FUNC2(0, F_SETFL, flags) >= 0) {
						FUNC4("sh: turning off NDELAY mode\n");
                                                goto retry;
                                        }
                                }
                        }
                }
                nr = -1;
	}
	return nr;
}