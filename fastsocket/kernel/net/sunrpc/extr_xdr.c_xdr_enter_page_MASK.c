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
struct xdr_stream {TYPE_1__* buf; int /*<<< orphan*/  nwords; } ;
struct TYPE_2__ {int /*<<< orphan*/  page_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(struct xdr_stream *xdr, unsigned int len)
{
	FUNC1(xdr, len);
	/*
	 * Position current pointer at beginning of tail, and
	 * set remaining message length.
	 */
	FUNC2(xdr, 0, len);
	xdr->nwords += FUNC0(xdr->buf->page_len);
}