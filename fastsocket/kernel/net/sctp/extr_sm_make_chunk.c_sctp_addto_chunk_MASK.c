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
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void *FUNC7(struct sctp_chunk *chunk, int len, const void *data)
{
	void *target;
	void *padding;
	int chunklen = FUNC4(chunk->chunk_hdr->length);
	int padlen = FUNC0(chunklen) - chunklen;

	padding = FUNC5(chunk->skb, padlen);
	target = FUNC5(chunk->skb, len);

	FUNC3(padding, 0, padlen);
	FUNC2(target, data, len);

	/* Adjust the chunk length field.  */
	chunk->chunk_hdr->length = FUNC1(chunklen + padlen + len);
	chunk->chunk_end = FUNC6(chunk->skb);

	return target;
}