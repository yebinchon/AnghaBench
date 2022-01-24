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
struct sysinfo {int totalram; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NFSSVC_MAXBLKSIZE ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd ; 
 int /*<<< orphan*/  nfsd_last_thread ; 
 int nfsd_max_blksize ; 
 int /*<<< orphan*/  nfsd_mutex ; 
 int /*<<< orphan*/  nfsd_program ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * nfsd_serv ; 
 int /*<<< orphan*/  nfssvc_boot ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sysinfo*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(void)
{
	int err = 0;

	FUNC0(!FUNC2(&nfsd_mutex));
	if (nfsd_serv) {
		FUNC7(nfsd_serv);
		return 0;
	}
	if (nfsd_max_blksize == 0) {
		/* choose a suitable default */
		struct sysinfo i;
		FUNC5(&i);
		/* Aim for 1/4096 of memory per thread
		 * This gives 1MB on 4Gig machines
		 * But only uses 32K on 128M machines.
		 * Bottom out at 8K on 32M and smaller.
		 * Of course, this is only a default.
		 */
		nfsd_max_blksize = NFSSVC_MAXBLKSIZE;
		i.totalram <<= PAGE_SHIFT - 12;
		while (nfsd_max_blksize > i.totalram &&
		       nfsd_max_blksize >= 8*1024*2)
			nfsd_max_blksize /= 2;
	}
	FUNC3();

	nfsd_serv = FUNC6(&nfsd_program, nfsd_max_blksize,
				      nfsd_last_thread, nfsd, THIS_MODULE);
	if (nfsd_serv == NULL)
		return -ENOMEM;

	FUNC4();
	FUNC1(&nfssvc_boot);		/* record boot time */
	return err;
}