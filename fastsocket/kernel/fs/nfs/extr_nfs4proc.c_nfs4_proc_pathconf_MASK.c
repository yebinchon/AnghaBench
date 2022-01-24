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
struct nfs_server {int dummy; } ;
struct nfs_pathconf {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs4_exception {scalar_t__ retry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_server*,struct nfs_fh*,struct nfs_pathconf*) ; 
 int FUNC1 (struct nfs_server*,int /*<<< orphan*/ ,struct nfs4_exception*) ; 

__attribute__((used)) static int FUNC2(struct nfs_server *server, struct nfs_fh *fhandle,
		struct nfs_pathconf *pathconf)
{
	struct nfs4_exception exception = { };
	int err;

	do {
		err = FUNC1(server,
				FUNC0(server, fhandle, pathconf),
				&exception);
	} while (exception.retry);
	return err;
}