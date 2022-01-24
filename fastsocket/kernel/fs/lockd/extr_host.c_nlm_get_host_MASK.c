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
struct nlm_host {scalar_t__ h_expires; int /*<<< orphan*/  h_count; int /*<<< orphan*/  h_name; } ;

/* Variables and functions */
 scalar_t__ NLM_HOST_EXPIRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 

struct nlm_host * FUNC2(struct nlm_host *host)
{
	if (host) {
		FUNC1("lockd: get host %s\n", host->h_name);
		FUNC0(&host->h_count);
		host->h_expires = jiffies + NLM_HOST_EXPIRE;
	}
	return host;
}