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
struct nfsd4_compoundargs {int /*<<< orphan*/ * tmpp; int /*<<< orphan*/ * tmp; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct nfsd4_compoundargs*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC5(struct nfsd4_compoundargs *argp, __be32 *p, int nbytes)
{
	if (p == argp->tmp) {
		p = FUNC3(nbytes, GFP_KERNEL);
		if (!p)
			return NULL;
		FUNC4(p, argp->tmp, nbytes);
	} else {
		FUNC0(p != argp->tmpp);
		argp->tmpp = NULL;
	}
	if (FUNC1(argp, kfree, p)) {
		FUNC2(p);
		return NULL;
	} else
		return (char *)p;
}