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
struct super_block {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_server {struct rpc_clnt* client; struct rpc_clnt* client_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_clnt*) ; 
 struct nfs_server* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct super_block *sb)
{
	struct nfs_server *server;
	struct rpc_clnt *rpc;

	FUNC2();

	server = FUNC1(sb);
	/* -EIO all pending I/O */
	rpc = server->client_acl;
	if (!FUNC0(rpc))
		FUNC3(rpc);
	rpc = server->client;
	if (!FUNC0(rpc))
		FUNC3(rpc);

	FUNC4();
}