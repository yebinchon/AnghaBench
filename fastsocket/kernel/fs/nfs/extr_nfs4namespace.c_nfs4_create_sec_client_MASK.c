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
struct rpc_auth {int dummy; } ;
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ rpc_authflavor_t ;

/* Variables and functions */
 scalar_t__ EIO ; 
 struct rpc_clnt* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct rpc_clnt*) ; 
 scalar_t__ FUNC2 (struct inode*,struct qstr*) ; 
 struct rpc_clnt* FUNC3 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_clnt*) ; 
 struct rpc_auth* FUNC5 (scalar_t__,struct rpc_clnt*) ; 

struct rpc_clnt *FUNC6(struct rpc_clnt *clnt, struct inode *inode,
					struct qstr *name)
{
	struct rpc_clnt *clone;
	struct rpc_auth *auth;
	rpc_authflavor_t flavor;

	flavor = FUNC2(inode, name);
	if (flavor < 0)
		return FUNC0(flavor);

	clone = FUNC3(clnt);
	if (FUNC1(clone))
		return clone;

	auth = FUNC5(flavor, clone);
	if (!auth) {
		FUNC4(clone);
		clone = FUNC0(-EIO);
	}

	return clone;
}