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
struct TYPE_2__ {int /*<<< orphan*/  cl_id; } ;
struct nfs4_client {int /*<<< orphan*/  cl_strhash; int /*<<< orphan*/  cl_recdir; int /*<<< orphan*/  cl_idhash; TYPE_1__ cl_clientid; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * conf_id_hashtbl ; 
 int /*<<< orphan*/ * conf_str_hashtbl ; 
 int /*<<< orphan*/  FUNC2 (char*,struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_client*) ; 

__attribute__((used)) static void
FUNC5(struct nfs4_client *clp)
{
	unsigned int idhashval = FUNC0(clp->cl_clientid.cl_id);
	unsigned int strhashval;

	FUNC2("NFSD: move_to_confirm nfs4_client %p\n", clp);
	FUNC3(&clp->cl_idhash, &conf_id_hashtbl[idhashval]);
	strhashval = FUNC1(clp->cl_recdir);
	FUNC3(&clp->cl_strhash, &conf_str_hashtbl[strhashval]);
	FUNC4(clp);
}