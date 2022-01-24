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
struct sctp_chunk {int /*<<< orphan*/  skb; int /*<<< orphan*/  chunk_end; TYPE_1__* chunk_hdr; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct iovec*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct sctp_chunk *chunk, int off, int len,
			  struct iovec *data)
{
	__u8 *target;
	int err = 0;

	/* Make room in chunk for data.  */
	target = FUNC3(chunk->skb, len);

	/* Copy data (whole iovec) into chunk */
	if ((err = FUNC1(target, data, off, len)))
		goto out;

	/* Adjust the chunk length field.  */
	chunk->chunk_hdr->length =
		FUNC0(FUNC2(chunk->chunk_hdr->length) + len);
	chunk->chunk_end = FUNC4(chunk->skb);

out:
	return err;
}