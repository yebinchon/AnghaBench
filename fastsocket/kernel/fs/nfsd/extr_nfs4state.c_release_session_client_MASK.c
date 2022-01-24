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
struct nfsd4_session {struct nfs4_client* se_client; } ;
struct nfs4_client {int /*<<< orphan*/  cl_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  client_lock ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_client*) ; 
 scalar_t__ FUNC2 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct nfsd4_session *session)
{
	struct nfs4_client *clp = session->se_client;

	if (!FUNC0(&clp->cl_refcount, &client_lock))
		return;
	if (FUNC2(clp)) {
		FUNC1(clp);
		session->se_client = NULL;
	} else
		FUNC3(clp);
	FUNC4(&client_lock);
}