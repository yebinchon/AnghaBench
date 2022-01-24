#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int sv_nrthreads; } ;

/* Variables and functions */
 int NFSD_MAXSERVS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  nfsd_mutex ; 
 TYPE_1__* nfsd_serv ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (unsigned short,int) ; 
 int nfsd_up ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int
FUNC8(unsigned short port, int nrservs)
{
	int	error;
	bool	nfsd_up_before;

	FUNC1(&nfsd_mutex);
	FUNC0("nfsd: creating service\n");
	if (nrservs <= 0)
		nrservs = 0;
	if (nrservs > NFSD_MAXSERVS)
		nrservs = NFSD_MAXSERVS;
	error = 0;
	if (nrservs == 0 && nfsd_serv == NULL)
		goto out;

	error = FUNC3();
	if (error)
		goto out;

	nfsd_up_before = nfsd_up;

	error = FUNC5(port, nrservs);
	if (error)
		goto out_destroy;
	error = FUNC7(nfsd_serv, NULL, nrservs);
	if (error)
		goto out_shutdown;
	/* We are holding a reference to nfsd_serv which
	 * we don't want to count in the return value,
	 * so subtract 1
	 */
	error = nfsd_serv->sv_nrthreads - 1;
out_shutdown:
	if (error < 0 && !nfsd_up_before)
		FUNC4();
out_destroy:
	FUNC6(nfsd_serv);		/* Release server */
out:
	FUNC2(&nfsd_mutex);
	return error;
}