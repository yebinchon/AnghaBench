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
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct rpc_clnt* FUNC0 (int) ; 
 struct rpc_clnt* FUNC1 (struct inode*) ; 
 int FUNC2 (struct rpc_clnt**,struct inode*,struct qstr*,struct nfs_fh*,struct nfs_fattr*) ; 
 struct rpc_clnt* FUNC3 (struct rpc_clnt*) ; 

struct rpc_clnt *
FUNC4(struct inode *dir, struct qstr *name,
			    struct nfs_fh *fhandle, struct nfs_fattr *fattr)
{
	struct rpc_clnt *client = FUNC1(dir);
	int status;

	status = FUNC2(&client, dir, name, fhandle, fattr);
	if (status < 0)
		return FUNC0(status);
	return (client == FUNC1(dir)) ? FUNC3(client) : client;
}