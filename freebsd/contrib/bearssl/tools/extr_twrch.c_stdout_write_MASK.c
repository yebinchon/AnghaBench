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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,size_t,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char const*,size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 
 scalar_t__ FUNC4 (int,unsigned char const*,size_t) ; 

__attribute__((used)) static int
FUNC5(void *ctx, const unsigned char *buf, size_t len)
{
	for (;;) {
#ifdef _WIN32
		DWORD wlen;
#else
		ssize_t wlen;
#endif
		int eof;

#ifdef _WIN32
		eof = !WriteFile(GetStdHandle(STD_OUTPUT_HANDLE),
			buf, len, &wlen, NULL);
#else
		wlen = FUNC4(1, buf, len);
		if (wlen <= 0) {
			if (wlen < 0 && errno == EINTR) {
				continue;
			}
			eof = 1;
		} else {
			eof = 0;
		}
#endif
		if (eof) {
			if (*(int *)ctx) {
				if (verbose) {
					FUNC3(stderr, "send: EOF\n");
				}
			}
			return -1;
		}
		if (*(int *)ctx) {
			FUNC2("send", buf, (size_t)wlen);
		}
		return (int)wlen;
	}
}