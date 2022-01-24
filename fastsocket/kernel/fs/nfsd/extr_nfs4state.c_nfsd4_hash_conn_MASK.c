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
struct nfsd4_conn {int dummy; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsd4_conn*,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfsd4_conn *conn, struct nfsd4_session *ses)
{
	struct nfs4_client *clp = ses->se_client;

	FUNC1(&clp->cl_lock);
	FUNC0(conn, ses);
	FUNC2(&clp->cl_lock);
}