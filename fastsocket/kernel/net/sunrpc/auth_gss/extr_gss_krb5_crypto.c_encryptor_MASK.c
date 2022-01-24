#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_buf {int page_len; int page_base; TYPE_1__* head; } ;
struct scatterlist {int length; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;
struct encryptor_desc {int fraglen; int fragno; int pos; int /*<<< orphan*/ * infrags; int /*<<< orphan*/ * outfrags; TYPE_2__ desc; struct page** pages; struct xdr_buf* outbuf; } ;
struct TYPE_3__ {int iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_CACHE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct page* FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct page*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct scatterlist *sg, void *data)
{
	struct encryptor_desc *desc = data;
	struct xdr_buf *outbuf = desc->outbuf;
	struct page *in_page;
	int thislen = desc->fraglen + sg->length;
	int fraglen, ret;
	int page_pos;

	/* Worst case is 4 fragments: head, end of page 1, start
	 * of page 2, tail.  Anything more is a bug. */
	FUNC0(desc->fragno > 3);

	page_pos = desc->pos - outbuf->head[0].iov_len;
	if (page_pos >= 0 && page_pos < outbuf->page_len) {
		/* pages are not in place: */
		int i = (page_pos + outbuf->page_base) >> PAGE_CACHE_SHIFT;
		in_page = desc->pages[i];
	} else {
		in_page = FUNC6(sg);
	}
	FUNC7(&desc->infrags[desc->fragno], in_page, sg->length,
		    sg->offset);
	FUNC7(&desc->outfrags[desc->fragno], FUNC6(sg), sg->length,
		    sg->offset);
	desc->fragno++;
	desc->fraglen += sg->length;
	desc->pos += sg->length;

	fraglen = thislen & (FUNC1(desc->desc.tfm) - 1);
	thislen -= fraglen;

	if (thislen == 0)
		return 0;

	FUNC5(&desc->infrags[desc->fragno - 1]);
	FUNC5(&desc->outfrags[desc->fragno - 1]);

	ret = FUNC2(&desc->desc, desc->outfrags,
					  desc->infrags, thislen);
	if (ret)
		return ret;

	FUNC4(desc->infrags, 4);
	FUNC4(desc->outfrags, 4);

	if (fraglen) {
		FUNC7(&desc->outfrags[0], FUNC6(sg), fraglen,
				sg->offset + sg->length - fraglen);
		desc->infrags[0] = desc->outfrags[0];
		FUNC3(&desc->infrags[0], in_page);
		desc->fragno = 1;
		desc->fraglen = fraglen;
	} else {
		desc->fragno = 0;
		desc->fraglen = 0;
	}
	return 0;
}