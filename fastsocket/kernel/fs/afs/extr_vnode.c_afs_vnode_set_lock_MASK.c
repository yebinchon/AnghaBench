#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; TYPE_4__* volume; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct afs_server {TYPE_2__ addr; } ;
typedef  int /*<<< orphan*/  afs_lock_type_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_3__ vldb; } ;
struct TYPE_9__ {TYPE_5__* vlocation; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct afs_server*) ; 
 int FUNC1 (struct afs_server*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct afs_server*,struct key*,struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_server*) ; 
 int /*<<< orphan*/  afs_sync_call ; 
 struct afs_server* FUNC7 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_vnode*,struct afs_server*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct key*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct afs_vnode *vnode, struct key *key,
		       afs_lock_type_t type)
{
	struct afs_server *server;
	int ret;

	FUNC3("%s{%x:%u.%u},%x,%u",
	       vnode->volume->vlocation->vldb.name,
	       vnode->fid.vid,
	       vnode->fid.vnode,
	       vnode->fid.unique,
	       FUNC9(key), type);

	do {
		/* pick a server to query */
		server = FUNC7(vnode);
		if (FUNC0(server))
			goto no_server;

		FUNC2("USING SERVER: %08x\n", FUNC10(server->addr.s_addr));

		ret = FUNC5(server, key, vnode, type, &afs_sync_call);

	} while (!FUNC8(vnode, server, ret));

	/* adjust the flags */
	if (ret == 0)
		FUNC6(server);

	FUNC4(" = %d", ret);
	return ret;

no_server:
	return FUNC1(server);
}