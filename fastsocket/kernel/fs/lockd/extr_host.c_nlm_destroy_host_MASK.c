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
struct rpc_clnt {int dummy; } ;
struct nlm_host {struct rpc_clnt* h_rpcclnt; int /*<<< orphan*/  h_nsmhandle; int /*<<< orphan*/  h_count; int /*<<< orphan*/  h_lockowners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_clnt*) ; 

__attribute__((used)) static void
FUNC7(struct nlm_host *host)
{
	struct rpc_clnt	*clnt;

	FUNC0(!FUNC3(&host->h_lockowners));
	FUNC0(FUNC1(&host->h_count));

	FUNC5(host);
	FUNC4(host->h_nsmhandle);

	clnt = host->h_rpcclnt;
	if (clnt != NULL)
		FUNC6(clnt);
	FUNC2(host);
}