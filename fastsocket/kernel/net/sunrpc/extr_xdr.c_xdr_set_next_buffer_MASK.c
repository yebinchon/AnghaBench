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
struct xdr_stream {scalar_t__ iov; scalar_t__ p; scalar_t__ end; TYPE_1__* buf; int /*<<< orphan*/ * page_ptr; } ;
struct TYPE_2__ {scalar_t__ head; int /*<<< orphan*/  len; int /*<<< orphan*/  tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*) ; 
 scalar_t__ FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct xdr_stream *xdr)
{
	if (xdr->page_ptr != NULL)
		FUNC1(xdr);
	else if (xdr->iov == xdr->buf->head) {
		if (FUNC2(xdr, 0, PAGE_SIZE) < 0)
			FUNC0(xdr, xdr->buf->tail, xdr->buf->len);
	}
	return xdr->p != xdr->end;
}