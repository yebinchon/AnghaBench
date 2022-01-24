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
struct rxrpc_conn_bundle {int /*<<< orphan*/  usage; int /*<<< orphan*/  chanwait; int /*<<< orphan*/  busy_conns; int /*<<< orphan*/  avail_conns; int /*<<< orphan*/  unused_conns; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_conn_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rxrpc_conn_bundle* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rxrpc_conn_bundle *FUNC6(gfp_t gfp)
{
	struct rxrpc_conn_bundle *bundle;

	FUNC1("");

	bundle = FUNC5(sizeof(struct rxrpc_conn_bundle), gfp);
	if (bundle) {
		FUNC0(&bundle->unused_conns);
		FUNC0(&bundle->avail_conns);
		FUNC0(&bundle->busy_conns);
		FUNC4(&bundle->chanwait);
		FUNC3(&bundle->usage, 1);
	}

	FUNC2(" = %p", bundle);
	return bundle;
}