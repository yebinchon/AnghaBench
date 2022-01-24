#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfs4_client {int /*<<< orphan*/  cl_recdir; scalar_t__ cl_firststate; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct TYPE_5__ {TYPE_1__ f_path; } ;

/* Variables and functions */
 scalar_t__ HEXDIR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cred const*) ; 
 int FUNC3 (struct cred const**) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* rec_file ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct nfs4_client *clp)
{
	const struct cred *original_cred;
	int status;

	if (!rec_file || !clp->cl_firststate)
		return;

	status = FUNC1(rec_file->f_path.mnt);
	if (status)
		goto out;
	clp->cl_firststate = 0;

	status = FUNC3(&original_cred);
	if (status < 0)
		goto out;

	status = FUNC4(clp->cl_recdir, HEXDIR_LEN-1);
	FUNC2(original_cred);
	if (status == 0)
		FUNC6(rec_file, rec_file->f_path.dentry, 0);
	FUNC0(rec_file->f_path.mnt);
out:
	if (status)
		FUNC5("NFSD: Failed to remove expired client state directory"
				" %.*s\n", HEXDIR_LEN, clp->cl_recdir);
	return;
}