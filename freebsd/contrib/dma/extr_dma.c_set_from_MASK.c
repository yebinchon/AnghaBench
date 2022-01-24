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
struct queue {char* sender; } ;
struct TYPE_2__ {char* masquerade_user; char* masquerade_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (char**,char*,char const*,char const*) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 char* FUNC4 (char const*) ; 
 char* username ; 

__attribute__((used)) static char *
FUNC5(struct queue *queue, const char *osender)
{
	const char *addr;
	char *sender;

	if (osender) {
		addr = osender;
	} else if (FUNC1("EMAIL") != NULL) {
		addr = FUNC1("EMAIL");
	} else {
		if (config.masquerade_user)
			addr = config.masquerade_user;
		else
			addr = username;
	}

	if (!FUNC3(addr, '@')) {
		const char *from_host = FUNC2();

		if (config.masquerade_host)
			from_host = config.masquerade_host;

		if (FUNC0(&sender, "%s@%s", addr, from_host) <= 0)
			return (NULL);
	} else {
		sender = FUNC4(addr);
		if (sender == NULL)
			return (NULL);
	}

	if (FUNC3(sender, '\n') != NULL) {
		errno = EINVAL;
		return (NULL);
	}

	queue->sender = sender;
	return (sender);
}