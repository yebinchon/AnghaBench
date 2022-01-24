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
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSOCK ; 
 struct socket* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 struct socket* FUNC2 (int) ; 
 struct socket* FUNC3 (int) ; 

__attribute__((used)) static struct socket *FUNC4(int fd)
{
	struct socket *sock;
	/* special case to disable backend */
	if (fd == -1)
		return NULL;
	sock = FUNC2(fd);
	if (!FUNC1(sock))
		return sock;
	sock = FUNC3(fd);
	if (!FUNC1(sock))
		return sock;
	return FUNC0(-ENOTSOCK);
}