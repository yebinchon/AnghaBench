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
typedef  int /*<<< orphan*/  ttl ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int ip_defttl ; 
 int FUNC0 (char*,int*,size_t*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(int ttl, int *old)
{
	size_t olen;

	olen = sizeof(*old);
	if (FUNC0("net.inet.ip.ttl", old, old ? &olen : NULL,
	    &ttl, sizeof(ttl)) == -1) {
		FUNC1(LOG_ERR, "set net.inet.ip.ttl: %m");
		return (-1);
	}
	ip_defttl = ttl;
	return (0);
}