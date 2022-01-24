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
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct nfs4_fs_locations {int dummy; } ;
struct nfs4_exception {scalar_t__ retry; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_clnt*,struct inode*,struct qstr const*,struct nfs4_fs_locations*,struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs4_exception*) ; 

int FUNC3(struct rpc_clnt *client, struct inode *dir,
			   const struct qstr *name,
			   struct nfs4_fs_locations *fs_locations,
			   struct page *page)
{
	struct nfs4_exception exception = { };
	int err;
	do {
		err = FUNC2(FUNC0(dir),
				FUNC1(client, dir, name, fs_locations, page),
				&exception);
	} while (exception.retry);
	return err;
}