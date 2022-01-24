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
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_cache_vlocation* reply; struct key* key; } ;
struct afs_cache_vlocation {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VL_PORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t VLGETENTRYBYNAME ; 
 int /*<<< orphan*/  VL_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXVLGetEntryByName ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC2 (struct in_addr*,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (char const*) ; 

int FUNC8(struct in_addr *addr,
			     struct key *key,
			     const char *volname,
			     struct afs_cache_vlocation *entry,
			     const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	size_t volnamesz, reqsz, padsz;
	__be32 *bp;

	FUNC0("");

	volnamesz = FUNC7(volname);
	padsz = (4 - (volnamesz & 3)) & 3;
	reqsz = 8 + volnamesz + padsz;

	call = FUNC1(&afs_RXVLGetEntryByName, reqsz, 384);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = entry;
	call->service_id = VL_SERVICE;
	call->port = FUNC4(AFS_VL_PORT);

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC3(VLGETENTRYBYNAME);
	*bp++ = FUNC3(volnamesz);
	FUNC5(bp, volname, volnamesz);
	if (padsz > 0)
		FUNC6((void *) bp + volnamesz, 0, padsz);

	/* initiate the call */
	return FUNC2(addr, call, GFP_KERNEL, wait_mode);
}