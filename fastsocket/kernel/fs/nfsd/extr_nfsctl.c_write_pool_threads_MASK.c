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
struct file {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t SIMPLE_TRANSACTION_LIMIT ; 
 int FUNC0 (char**,int*) ; 
 int* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int*) ; 
 int /*<<< orphan*/  nfsd_mutex ; 
 int FUNC6 () ; 
 int FUNC7 (int,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,char*,int,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static ssize_t FUNC11(struct file *file, char *buf, size_t size)
{
	/* if size > 0, look for an array of number of threads per node
	 * and apply them  then write out number of threads per node as reply
	 */
	char *mesg = buf;
	int i;
	int rv;
	int len;
	int npools;
	int *nthreads;

	FUNC3(&nfsd_mutex);
	npools = FUNC6();
	if (npools == 0) {
		/*
		 * NFS is shut down.  The admin can start it by
		 * writing to the threads file but NOT the pool_threads
		 * file, sorry.  Report zero threads.
		 */
		FUNC4(&nfsd_mutex);
		FUNC9(buf, "0\n");
		return FUNC10(buf);
	}

	nthreads = FUNC1(npools, sizeof(int), GFP_KERNEL);
	rv = -ENOMEM;
	if (nthreads == NULL)
		goto out_free;

	if (size > 0) {
		for (i = 0; i < npools; i++) {
			rv = FUNC0(&mesg, &nthreads[i]);
			if (rv == -ENOENT)
				break;		/* fewer numbers than pools */
			if (rv)
				goto out_free;	/* syntax error */
			rv = -EINVAL;
			if (nthreads[i] < 0)
				goto out_free;
		}
		rv = FUNC7(i, nthreads);
		if (rv)
			goto out_free;
	}

	rv = FUNC5(npools, nthreads);
	if (rv)
		goto out_free;

	mesg = buf;
	size = SIMPLE_TRANSACTION_LIMIT;
	for (i = 0; i < npools && size > 0; i++) {
		FUNC8(mesg, size, "%d%c", nthreads[i], (i == npools-1 ? '\n' : ' '));
		len = FUNC10(mesg);
		size -= len;
		mesg += len;
	}
	rv = mesg - buf;
out_free:
	FUNC2(nthreads);
	FUNC4(&nfsd_mutex);
	return rv;
}