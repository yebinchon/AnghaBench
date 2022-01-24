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
struct sockaddr {int dummy; } ;
struct blacklist {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blacklist*) ; 
 struct blacklist* FUNC1 () ; 
 int FUNC2 (struct blacklist*,int,int,struct sockaddr const*,int /*<<< orphan*/ ,char const*) ; 

int
FUNC3(int action, int rfd, const struct sockaddr *sa, socklen_t salen,
    const char *msg)
{
	struct blacklist *bl;
	int rv;
	if ((bl = FUNC1()) == NULL)
		return -1;
	rv = FUNC2(bl, action, rfd, sa, salen, msg);
	FUNC0(bl);
	return rv;
}