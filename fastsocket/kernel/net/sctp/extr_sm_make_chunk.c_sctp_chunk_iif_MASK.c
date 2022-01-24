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
struct sctp_chunk {int /*<<< orphan*/  skb; } ;
struct sctp_af {int (* skb_iif ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sctp_af* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const struct sctp_chunk *chunk)
{
	struct sctp_af *af;
	int iif = 0;

	af = FUNC2(FUNC1(FUNC0(chunk->skb)->version));
	if (af)
		iif = af->skb_iif(chunk->skb);

	return iif;
}