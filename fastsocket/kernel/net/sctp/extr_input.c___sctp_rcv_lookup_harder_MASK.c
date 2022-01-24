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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ sctp_chunkhdr_t ;

/* Variables and functions */
#define  SCTP_CID_INIT 129 
#define  SCTP_CID_INIT_ACK 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct sctp_association* FUNC1 (struct sk_buff*,union sctp_addr const*,struct sctp_transport**) ; 
 struct sctp_association* FUNC2 (struct sk_buff*,union sctp_addr const*,struct sctp_transport**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_association *FUNC4(struct sk_buff *skb,
				      const union sctp_addr *laddr,
				      struct sctp_transport **transportp)
{
	sctp_chunkhdr_t *ch;

	ch = (sctp_chunkhdr_t *) skb->data;

	/* The code below will attempt to walk the chunk and extract
	 * parameter information.  Before we do that, we need to verify
	 * that the chunk length doesn't cause overflow.  Otherwise, we'll
	 * walk off the end.
	 */
	if (FUNC0(FUNC3(ch->length)) > skb->len)
		return NULL;

	/* If this is INIT/INIT-ACK look inside the chunk too. */
	switch (ch->type) {
	case SCTP_CID_INIT:
	case SCTP_CID_INIT_ACK:
		return FUNC1(skb, laddr, transportp);
		break;

	default:
		return FUNC2(skb, laddr, transportp);
		break;
	}


	return NULL;
}