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
typedef  size_t u32 ;
struct svc_serv {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct rpc_xprt {int dummy; } ;
struct nfs_callback_data {int /*<<< orphan*/  users; struct svc_rqst* task; struct svc_rqst* rqst; struct svc_serv* serv; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  NFS4_CALLBACK_BUFSIZE ; 
 int FUNC1 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct svc_rqst* FUNC3 (int (*) (void*),struct svc_rqst*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs4_callback_program ; 
 int FUNC6 (void*) ; 
 struct svc_rqst* FUNC7 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC8 (size_t,struct rpc_xprt*,struct nfs_callback_data*) ; 
 struct nfs_callback_data* nfs_callback_info ; 
 int /*<<< orphan*/  nfs_callback_mutex ; 
 int FUNC9 (size_t,struct svc_serv*,struct rpc_xprt*,struct svc_rqst**,int (*) (void*)) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 
 struct svc_serv* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC13 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC14 (struct svc_serv*) ; 

int FUNC15(u32 minorversion, struct rpc_xprt *xprt)
{
	struct svc_serv *serv = NULL;
	struct svc_rqst *rqstp;
	int (*callback_svc)(void *vrqstp);
	struct nfs_callback_data *cb_info = &nfs_callback_info[minorversion];
	char svc_name[12];
	int ret = 0;
	int minorversion_setup;

	FUNC4(&nfs_callback_mutex);
	if (cb_info->users++ || cb_info->task != NULL) {
		FUNC8(minorversion, xprt, cb_info);
		goto out;
	}
	serv = FUNC11(&nfs4_callback_program, NFS4_CALLBACK_BUFSIZE, NULL);
	if (!serv) {
		ret = -ENOMEM;
		goto out_err;
	}

	minorversion_setup =  FUNC9(minorversion,
					serv, xprt, &rqstp, callback_svc);
	if (!minorversion_setup) {
		/* v4.0 callback setup */
		rqstp = FUNC7(serv);
		callback_svc = nfs4_callback_svc;
	}

	if (FUNC0(rqstp)) {
		ret = FUNC1(rqstp);
		goto out_err;
	}

	FUNC14(serv);

	FUNC10(svc_name, "nfsv4.%u-svc", minorversion);
	cb_info->serv = serv;
	cb_info->rqst = rqstp;
	cb_info->task = FUNC3(callback_svc, cb_info->rqst, svc_name);
	if (FUNC0(cb_info->task)) {
		ret = FUNC1(cb_info->task);
		FUNC13(cb_info->rqst);
		cb_info->rqst = NULL;
		cb_info->task = NULL;
		goto out_err;
	}
out:
	/*
	 * svc_create creates the svc_serv with sv_nrthreads == 1, and then
	 * svc_prepare_thread increments that. So we need to call svc_destroy
	 * on both success and failure so that the refcount is 1 when the
	 * thread exits.
	 */
	if (serv)
		FUNC12(serv);
	FUNC5(&nfs_callback_mutex);
	return ret;
out_err:
	FUNC2("NFS: Couldn't create callback socket or server thread; "
		"err = %d\n", ret);
	cb_info->users--;
	goto out;
}