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
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct mx_hostentry {int /*<<< orphan*/  addr; int /*<<< orphan*/  host; TYPE_1__ ai; int /*<<< orphan*/  sa; int /*<<< orphan*/  pref; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC4(struct mx_hostentry *h)
{
	int fd;

	FUNC3(LOG_INFO, "trying remote delivery to %s [%s] pref %d",
	       h->host, h->addr, h->pref);

	fd = FUNC2(h->ai.ai_family, h->ai.ai_socktype, h->ai.ai_protocol);
	if (fd < 0) {
		FUNC3(LOG_INFO, "socket for %s [%s] failed: %m",
		       h->host, h->addr);
		return (-1);
	}

	if (FUNC1(fd, (struct sockaddr *)&h->sa, h->ai.ai_addrlen) < 0) {
		FUNC3(LOG_INFO, "connect to %s [%s] failed: %m",
		       h->host, h->addr);
		FUNC0(fd);
		return (-1);
	}

	return (fd);
}