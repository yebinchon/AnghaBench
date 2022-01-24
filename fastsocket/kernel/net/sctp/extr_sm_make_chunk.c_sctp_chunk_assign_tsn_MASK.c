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
struct TYPE_4__ {TYPE_1__* data_hdr; } ;
struct sctp_chunk {int has_tsn; int /*<<< orphan*/  asoc; TYPE_2__ subh; } ;
struct TYPE_3__ {int /*<<< orphan*/  tsn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct sctp_chunk *chunk)
{
	if (!chunk->has_tsn) {
		/* This is the last possible instant to
		 * assign a TSN.
		 */
		chunk->subh.data_hdr->tsn =
			FUNC0(FUNC1(chunk->asoc));
		chunk->has_tsn = 1;
	}
}