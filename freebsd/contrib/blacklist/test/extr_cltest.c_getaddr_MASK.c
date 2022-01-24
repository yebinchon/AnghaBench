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
typedef  scalar_t__ uint8_t ;
struct sockaddr_storage {scalar_t__ ss_len; } ;
struct sockaddr_in6 {void* sin6_port; void* sin6_family; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {void* sin_port; void* sin_family; int /*<<< orphan*/  sin_addr; } ;
typedef  int socklen_t ;
typedef  void* in_port_t ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (void*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,char) ; 

__attribute__((used)) static void
FUNC5(const char *a, in_port_t p, struct sockaddr_storage *ss,
    socklen_t *slen)
{
	int c;

	FUNC3(ss, 0, sizeof(*ss));
	p = FUNC1(p);

	if (FUNC4(a, ':')) {
		struct sockaddr_in6 *s6 = (void *)ss;
		c = FUNC2(AF_INET6, a, &s6->sin6_addr);
		s6->sin6_family = AF_INET6;
		*slen = sizeof(*s6);
		s6->sin6_port = p;
	} else {
		struct sockaddr_in *s = (void *)ss;
		c = FUNC2(AF_INET, a, &s->sin_addr);
		s->sin_family = AF_INET;
		*slen = sizeof(*s);
		s->sin_port = p;
	}
#ifdef HAVE_STRUCT_SOCKADDR_SA_LEN
	ss->ss_len = (uint8_t)*slen;
#endif
	if (c == -1)
		FUNC0(EXIT_FAILURE, "Invalid address `%s'", a);
}