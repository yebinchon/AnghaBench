#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct nfsd4_exchange_id {char clientid; int seqid; int flags; scalar_t__ spa_how; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef  int __be32 ;
struct TYPE_2__ {char* nodename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ SP4_NONE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (char*) ; 
 TYPE_1__* FUNC8 () ; 

__attribute__((used)) static __be32
FUNC9(struct nfsd4_compoundres *resp, int nfserr,
			 struct nfsd4_exchange_id *exid)
{
	__be32 *p;
	char *major_id;
	char *server_scope;
	int major_id_sz;
	int server_scope_sz;
	uint64_t minor_id = 0;

	if (nfserr)
		return nfserr;

	major_id = FUNC8()->nodename;
	major_id_sz = FUNC7(major_id);
	server_scope = FUNC8()->nodename;
	server_scope_sz = FUNC7(server_scope);

	FUNC2(
		8 /* eir_clientid */ +
		4 /* eir_sequenceid */ +
		4 /* eir_flags */ +
		4 /* spr_how (SP4_NONE) */ +
		8 /* so_minor_id */ +
		4 /* so_major_id.len */ +
		(FUNC6(major_id_sz) * 4) +
		4 /* eir_server_scope.len */ +
		(FUNC6(server_scope_sz) * 4) +
		4 /* eir_server_impl_id.count (0) */);

	FUNC5(&exid->clientid, 8);
	FUNC3(exid->seqid);
	FUNC3(exid->flags);

	/* state_protect4_r. Currently only support SP4_NONE */
	FUNC1(exid->spa_how != SP4_NONE);
	FUNC3(exid->spa_how);

	/* The server_owner struct */
	FUNC4(minor_id);      /* Minor id */
	/* major id */
	FUNC3(major_id_sz);
	FUNC5(major_id, major_id_sz);

	/* Server scope */
	FUNC3(server_scope_sz);
	FUNC5(server_scope, server_scope_sz);

	/* Implementation id */
	FUNC3(0);	/* zero length nfs_impl_id4 array */
	FUNC0();
	return 0;
}