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
typedef  unsigned int u32 ;
struct nfsd4_compoundargs {unsigned int pagelen; char* tmp; char* tmpp; scalar_t__ p; scalar_t__ end; int /*<<< orphan*/ * pagelist; } ;
typedef  char __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *FUNC5(struct nfsd4_compoundargs *argp, u32 nbytes)
{
	/* We want more bytes than seem to be available.
	 * Maybe we need a new page, maybe we have just run out
	 */
	unsigned int avail = (char *)argp->end - (char *)argp->p;
	__be32 *p;
	if (avail + argp->pagelen < nbytes)
		return NULL;
	if (avail + PAGE_SIZE < nbytes) /* need more than a page !! */
		return NULL;
	/* ok, we can do it with the current plus the next page */
	if (nbytes <= sizeof(argp->tmp))
		p = argp->tmp;
	else {
		FUNC1(argp->tmpp);
		p = argp->tmpp = FUNC2(nbytes, GFP_KERNEL);
		if (!p)
			return NULL;
		
	}
	/*
	 * The following memcpy is safe because read_buf is always
	 * called with nbytes > avail, and the two cases above both
	 * guarantee p points to at least nbytes bytes.
	 */
	FUNC3(p, argp->p, avail);
	/* step to next page */
	argp->p = FUNC4(argp->pagelist[0]);
	argp->pagelist++;
	if (argp->pagelen < PAGE_SIZE) {
		argp->end = argp->p + (argp->pagelen>>2);
		argp->pagelen = 0;
	} else {
		argp->end = argp->p + (PAGE_SIZE>>2);
		argp->pagelen -= PAGE_SIZE;
	}
	FUNC3(((char*)p)+avail, argp->p, (nbytes - avail));
	argp->p += FUNC0(nbytes - avail);
	return p;
}