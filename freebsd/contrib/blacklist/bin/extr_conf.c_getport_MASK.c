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
struct servent {int /*<<< orphan*/  s_port; } ;

/* Variables and functions */
 int FUNC0 (char const*,size_t,int,void*,char*,char const*) ; 
 struct servent* FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(const char *f, size_t l, bool local, void *r, const char *p)
{
	struct servent *sv;

	// XXX: Pass in the proto instead
	if ((sv = FUNC1(p, "tcp")) != NULL) {
		*(int *)r = FUNC2(sv->s_port);
		return 0;
	}
	if ((sv = FUNC1(p, "udp")) != NULL) {
		*(int *)r = FUNC2(sv->s_port);
		return 0;
	}

	return FUNC0(f, l, local, r, "service", p);
}