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
struct nfs4_client_reclaim {int /*<<< orphan*/  cr_recdir; int /*<<< orphan*/  cr_strhash; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEXDIR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfs4_client_reclaim* FUNC1 () ; 
 unsigned int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * reclaim_str_hashtbl ; 
 int /*<<< orphan*/  reclaim_str_hashtbl_size ; 

int
FUNC6(const char *name)
{
	unsigned int strhashval;
	struct nfs4_client_reclaim *crp = NULL;

	FUNC3("NFSD nfs4_client_to_reclaim NAME: %.*s\n", HEXDIR_LEN, name);
	crp = FUNC1();
	if (!crp)
		return 0;
	strhashval = FUNC2(name);
	FUNC0(&crp->cr_strhash);
	FUNC4(&crp->cr_strhash, &reclaim_str_hashtbl[strhashval]);
	FUNC5(crp->cr_recdir, name, HEXDIR_LEN);
	reclaim_str_hashtbl_size++;
	return 1;
}