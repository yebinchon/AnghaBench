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
struct key {int dummy; } ;
struct in_addr {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct afs_call {void** request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_cache_vlocation* reply; struct key* key; } ;
struct afs_cache_vlocation {int dummy; } ;
typedef  int /*<<< orphan*/  afs_voltype_t ;
typedef  int /*<<< orphan*/  afs_volid_t ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VL_PORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VLGETENTRYBYID ; 
 int /*<<< orphan*/  VL_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXVLGetEntryById ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct in_addr*,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct in_addr *addr,
			   struct key *key,
			   afs_volid_t volid,
			   afs_voltype_t voltype,
			   struct afs_cache_vlocation *entry,
			   const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	__be32 *bp;

	FUNC0("");

	call = FUNC1(&afs_RXVLGetEntryById, 12, 384);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = entry;
	call->service_id = VL_SERVICE;
	call->port = FUNC4(AFS_VL_PORT);

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC3(VLGETENTRYBYID);
	*bp++ = FUNC3(volid);
	*bp   = FUNC3(voltype);

	/* initiate the call */
	return FUNC2(addr, call, GFP_KERNEL, wait_mode);
}