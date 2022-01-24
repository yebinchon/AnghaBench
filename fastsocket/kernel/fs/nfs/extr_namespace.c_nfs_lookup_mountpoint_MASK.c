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
struct rpc_clnt {int dummy; } ;
struct qstr {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int (* lookup ) (int /*<<< orphan*/ ,struct inode*,struct qstr*,struct nfs_fh*,struct nfs_fattr*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 struct rpc_clnt* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 struct rpc_clnt* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct inode*,struct qstr*,struct nfs_fh*,struct nfs_fattr*) ; 

__attribute__((used)) static inline struct rpc_clnt *FUNC5(struct inode *dir,
						     struct qstr *name,
						     struct nfs_fh *fh,
						     struct nfs_fattr *fattr)
{
	int err = FUNC1(dir)->lookup(FUNC2(dir)->client, dir, name, fh, fattr);
	if (err)
		return FUNC0(err);
	return FUNC3(FUNC2(dir)->client);
}