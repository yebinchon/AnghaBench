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
struct snmp_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snmp_client*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static inline const char *
FUNC2(struct snmp_client *sc, const char **strp)
{
	if (**strp != ':')
		return (*strp + 1);

	if ((*strp)[1] == '\0') {
		FUNC0(sc, "empty port name");
		return (NULL);
	}

	*strp += FUNC1(*strp);
	return (*strp);
}