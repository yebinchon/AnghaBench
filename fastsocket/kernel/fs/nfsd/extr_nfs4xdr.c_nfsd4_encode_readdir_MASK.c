#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ err; } ;
struct nfsd4_readdir {int rd_maxcount; int buflen; scalar_t__* buffer; TYPE_5__ common; int /*<<< orphan*/ * offset; int /*<<< orphan*/  rd_fhp; int /*<<< orphan*/  rd_rqstp; int /*<<< orphan*/  rd_cookie; } ;
struct nfsd4_compoundres {scalar_t__* p; scalar_t__* end; TYPE_4__* xbuf; TYPE_1__* rqstp; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  scalar_t__ __be32 ;
struct TYPE_9__ {int page_len; TYPE_3__* head; TYPE_2__* tail; } ;
struct TYPE_8__ {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_7__ {scalar_t__* iov_base; scalar_t__ iov_len; } ;
struct TYPE_6__ {int rq_resused; int /*<<< orphan*/ * rq_respages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ nfs_ok ; 
 int /*<<< orphan*/  nfsd4_encode_dirent ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_eof ; 
 scalar_t__ nfserr_notdir ; 
 scalar_t__ nfserr_resource ; 
 scalar_t__ nfserr_symlink ; 
 scalar_t__ nfserr_toosmall ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC7(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_readdir *readdir)
{
	int maxcount;
	loff_t offset;
	__be32 *page, *savep, *tailbase;
	__be32 *p;

	if (nfserr)
		return nfserr;
	if (resp->xbuf->page_len)
		return nfserr_resource;

	FUNC1(8);  /* verifier */
	savep = p;

	/* XXX: Following NFSv3, we ignore the READDIR verifier for now. */
	FUNC2(0);
	FUNC2(0);
	FUNC0();
	resp->xbuf->head[0].iov_len = ((char*)resp->p) - (char*)resp->xbuf->head[0].iov_base;
	tailbase = p;

	maxcount = PAGE_SIZE;
	if (maxcount > readdir->rd_maxcount)
		maxcount = readdir->rd_maxcount;

	/*
	 * Convert from bytes to words, account for the two words already
	 * written, make sure to leave two words at the end for the next
	 * pointer and eof field.
	 */
	maxcount = (maxcount >> 2) - 4;
	if (maxcount < 0) {
		nfserr =  nfserr_toosmall;
		goto err_no_verf;
	}

	page = FUNC5(resp->rqstp->rq_respages[resp->rqstp->rq_resused++]);
	readdir->common.err = 0;
	readdir->buflen = maxcount;
	readdir->buffer = page;
	readdir->offset = NULL;

	offset = readdir->rd_cookie;
	nfserr = FUNC4(readdir->rd_rqstp, readdir->rd_fhp,
			      &offset,
			      &readdir->common, nfsd4_encode_dirent);
	if (nfserr == nfs_ok &&
	    readdir->common.err == nfserr_toosmall &&
	    readdir->buffer == page) 
		nfserr = nfserr_toosmall;
	if (nfserr == nfserr_symlink)
		nfserr = nfserr_notdir;
	if (nfserr)
		goto err_no_verf;

	if (readdir->offset)
		FUNC6(readdir->offset, offset);

	p = readdir->buffer;
	*p++ = 0;	/* no more entries */
	*p++ = FUNC3(readdir->common.err == nfserr_eof);
	resp->xbuf->page_len = ((char*)p) - (char*)FUNC5(
		resp->rqstp->rq_respages[resp->rqstp->rq_resused-1]);

	/* Use rest of head for padding and remaining ops: */
	resp->xbuf->tail[0].iov_base = tailbase;
	resp->xbuf->tail[0].iov_len = 0;
	resp->p = resp->xbuf->tail[0].iov_base;
	resp->end = resp->p + (PAGE_SIZE - resp->xbuf->head[0].iov_len)/4;

	return 0;
err_no_verf:
	p = savep;
	FUNC0();
	return nfserr;
}