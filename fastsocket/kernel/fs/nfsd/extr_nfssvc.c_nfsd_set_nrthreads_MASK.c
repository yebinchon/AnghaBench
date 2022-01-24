#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sv_nrpools; int /*<<< orphan*/ * sv_pools; } ;

/* Variables and functions */
 int NFSD_MAXSERVS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_mutex ; 
 TYPE_1__* nfsd_serv ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int FUNC5(int n, int *nthreads)
{
	int i = 0;
	int tot = 0;
	int err = 0;

	FUNC0(!FUNC1(&nfsd_mutex));

	if (nfsd_serv == NULL || n <= 0)
		return 0;

	if (n > nfsd_serv->sv_nrpools)
		n = nfsd_serv->sv_nrpools;

	/* enforce a global maximum number of threads */
	tot = 0;
	for (i = 0; i < n; i++) {
		if (nthreads[i] > NFSD_MAXSERVS)
			nthreads[i] = NFSD_MAXSERVS;
		tot += nthreads[i];
	}
	if (tot > NFSD_MAXSERVS) {
		/* total too large: scale down requested numbers */
		for (i = 0; i < n && tot > 0; i++) {
		    	int new = nthreads[i] * NFSD_MAXSERVS / tot;
			tot -= (nthreads[i] - new);
			nthreads[i] = new;
		}
		for (i = 0; i < n && tot > 0; i++) {
			nthreads[i]--;
			tot--;
		}
	}

	/*
	 * There must always be a thread in pool 0; the admin
	 * can't shut down NFS completely using pool_threads.
	 */
	if (nthreads[0] == 0)
		nthreads[0] = 1;

	/* apply the new numbers */
	FUNC3(nfsd_serv);
	for (i = 0; i < n; i++) {
		err = FUNC4(nfsd_serv, &nfsd_serv->sv_pools[i],
				    	  nthreads[i]);
		if (err)
			break;
	}
	FUNC2(nfsd_serv);

	return err;
}