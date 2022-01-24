#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_timeout {int dummy; } ;
struct nfs_client_initdata {TYPE_1__* rpc_ops; scalar_t__ hostname; } ;
struct nfs_client {scalar_t__ cl_cons_state; int /*<<< orphan*/  cl_share_link; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;
struct TYPE_2__ {int (* init_client ) (struct nfs_client*,struct rpc_timeout const*,char const*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ERESTARTSYS ; 
 struct nfs_client* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*) ; 
 scalar_t__ NFS_CS_INITING ; 
 scalar_t__ NFS_CS_READY ; 
 struct nfs_client* FUNC3 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfs_client* FUNC6 (struct nfs_client_initdata const*) ; 
 int /*<<< orphan*/  nfs_client_active_wq ; 
 int /*<<< orphan*/  nfs_client_list ; 
 int /*<<< orphan*/  nfs_client_lock ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_client*) ; 
 struct nfs_client* FUNC8 (struct nfs_client_initdata const*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct nfs_client*,struct rpc_timeout const*,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct nfs_client *
FUNC14(const struct nfs_client_initdata *cl_init,
	       const struct rpc_timeout *timeparms,
	       const char *ip_addr,
	       rpc_authflavor_t authflavour,
	       int noresvport)
{
	struct nfs_client *clp, *new = NULL;
	int error;

	FUNC4("--> nfs_get_client(%s,v%u)\n",
		cl_init->hostname ?: "", cl_init->rpc_ops->version);

	/* see if the client already exists */
	do {
		FUNC10(&nfs_client_lock);

		clp = FUNC8(cl_init);
		if (clp)
			goto found_client;
		if (new)
			goto install_client;

		FUNC11(&nfs_client_lock);

		new = FUNC6(cl_init);
	} while (!FUNC2(new));

	FUNC4("--> nfs_get_client() = %ld [failed]\n", FUNC3(new));
	return new;

	/* install a new client and return with it unready */
install_client:
	clp = new;
	FUNC5(&clp->cl_share_link, &nfs_client_list);
	FUNC11(&nfs_client_lock);

	error = cl_init->rpc_ops->init_client(clp, timeparms, ip_addr,
					      authflavour, noresvport);
	if (error < 0) {
		FUNC9(clp);
		return FUNC1(error);
	}
	FUNC4("--> nfs_get_client() = %p [new]\n", clp);
	return clp;

	/* found an existing client
	 * - make sure it's ready before returning
	 */
found_client:
	FUNC11(&nfs_client_lock);

	if (new)
		FUNC7(new);

	error = FUNC13(nfs_client_active_wq,
				clp->cl_cons_state < NFS_CS_INITING);
	if (error < 0) {
		FUNC9(clp);
		return FUNC1(-ERESTARTSYS);
	}

	if (clp->cl_cons_state < NFS_CS_READY) {
		error = clp->cl_cons_state;
		FUNC9(clp);
		return FUNC1(error);
	}

	FUNC0(clp->cl_cons_state != NFS_CS_READY);

	FUNC4("--> nfs_get_client() = %p [share]\n", clp);
	return clp;
}