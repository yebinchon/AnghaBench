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
typedef  int /*<<< orphan*/  forw ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int ip_forwarding ; 
 int FUNC0 (char*,int*,size_t*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(int forw, int *old)
{
	size_t olen;

	olen = sizeof(*old);
	if (FUNC0("net.inet.ip.forwarding", old, old ? &olen : NULL,
	    &forw, sizeof(forw)) == -1) {
		FUNC1(LOG_ERR, "set net.inet.ip.forwarding: %m");
		return (-1);
	}
	ip_forwarding = forw;
	return (0);
}