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
struct nlm_host {int /*<<< orphan*/  h_reclaim; int /*<<< orphan*/  h_granted; int /*<<< orphan*/  h_lockowners; int /*<<< orphan*/  h_count; int /*<<< orphan*/  h_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nlm_host *host)
{
	if (host != NULL) {
		FUNC3("lockd: release host %s\n", host->h_name);
		FUNC0(FUNC2(&host->h_count) < 0);
		if (FUNC1(&host->h_count)) {
			FUNC0(!FUNC4(&host->h_lockowners));
			FUNC0(!FUNC4(&host->h_granted));
			FUNC0(!FUNC4(&host->h_reclaim));
		}
	}
}