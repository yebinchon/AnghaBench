#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_cred {int dummy; } ;
struct nfs_server {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_attr; } ;
struct TYPE_3__ {int open_flags; scalar_t__ createmode; } ;
struct nfs4_opendata {TYPE_2__ o_res; TYPE_1__ o_arg; int /*<<< orphan*/  state; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int /*<<< orphan*/ * d_inode; } ;
typedef  int /*<<< orphan*/  fmode_t ;
typedef  enum open_claim_type4 { ____Placeholder_open_claim_type4 } open_claim_type4 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NFS4_CREATE_GUARDED ; 
 int NFS4_OPEN_CLAIM_FH ; 
 int NFS4_OPEN_CLAIM_NULL ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 int O_EXCL ; 
 int FUNC1 (struct nfs4_opendata*,int /*<<< orphan*/ ,int,struct nfs4_state**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct rpc_cred*,int /*<<< orphan*/ ,struct iattr*,struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_opendata*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct nfs4_state_owner*) ; 
 struct nfs4_state_owner* FUNC6 (struct nfs_server*,struct rpc_cred*) ; 
 struct nfs4_opendata* FUNC7 (struct dentry*,struct nfs4_state_owner*,int /*<<< orphan*/ ,int,struct iattr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs4_state_owner*) ; 
 int FUNC10 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct iattr*) ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *dentry, fmode_t fmode, int flags, struct iattr *sattr, struct rpc_cred *cred, struct nfs4_state **res)
{
	struct nfs4_state_owner  *sp;
	struct nfs4_state     *state = NULL;
	struct nfs_server       *server = FUNC0(dir);
	struct nfs4_opendata *opendata;
	enum open_claim_type4 claim = NFS4_OPEN_CLAIM_NULL;
	int status;

	/* Protect against reboot recovery conflicts */
	status = -ENOMEM;
	if (!(sp = FUNC6(server, cred))) {
		FUNC2("nfs4_do_open: nfs4_get_state_owner failed!\n");
		goto out_err;
	}
	status = FUNC10(server);
	if (status != 0)
		goto err_put_state_owner;
	if (dentry->d_inode != NULL)
		FUNC11(dentry->d_inode, fmode);
	status = -ENOMEM;
	if (dentry->d_inode)
		claim = NFS4_OPEN_CLAIM_FH;
	opendata = FUNC7(dentry, sp, fmode, flags, sattr,
			claim, GFP_KERNEL);
	if (opendata == NULL)
		goto err_put_state_owner;

	if (dentry->d_inode != NULL)
		opendata->state = FUNC5(dentry->d_inode, sp);

	status = FUNC1(opendata, fmode, flags, &state);
	if (status != 0)
		goto err_opendata_put;

	if ((opendata->o_arg.open_flags & O_EXCL) &&
	    (opendata->o_arg.createmode != NFS4_CREATE_GUARDED)) {
		FUNC4(opendata, sattr);

		FUNC12(opendata->o_res.f_attr);
		status = FUNC3(state->inode, cred,
				opendata->o_res.f_attr, sattr,
				state);
		if (status == 0)
			FUNC14(state->inode, sattr);
		FUNC13(state->inode, opendata->o_res.f_attr);
	}
	FUNC8(opendata);
	FUNC9(sp);
	*res = state;
	return 0;
err_opendata_put:
	FUNC8(opendata);
err_put_state_owner:
	FUNC9(sp);
out_err:
	*res = NULL;
	return status;
}