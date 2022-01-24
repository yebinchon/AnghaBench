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
struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int dummy; } ;
struct nfs4_state {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*,struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_state*) ; 

int FUNC3(const struct nfs_server *server, struct nfs4_state *state)
{
	struct nfs_client *clp = server->nfs_client;

	if (!FUNC2(state))
		return -EBADF;
	FUNC1(clp, state);
	FUNC0(clp);
	return 0;
}