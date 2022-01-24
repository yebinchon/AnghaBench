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
struct sk_buff {int dummy; } ;
struct lapb_cb {int mode; int vr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned char LAPB_EPF ; 
 int LAPB_EXTENDED ; 
 scalar_t__ LAPB_HEADER_LEN ; 
 int LAPB_S ; 
 unsigned char LAPB_SPF ; 
 int LAPB_U ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*,struct sk_buff*,int) ; 
 unsigned char* FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 

void FUNC4(struct lapb_cb *lapb, int frametype,
		       int poll_bit, int type)
{
	struct sk_buff *skb;
	unsigned char  *dptr;

	if ((skb = FUNC0(LAPB_HEADER_LEN + 3, GFP_ATOMIC)) == NULL)
		return;

	FUNC3(skb, LAPB_HEADER_LEN + 1);

	if (lapb->mode & LAPB_EXTENDED) {
		if ((frametype & LAPB_U) == LAPB_U) {
			dptr   = FUNC2(skb, 1);
			*dptr  = frametype;
			*dptr |= poll_bit ? LAPB_SPF : 0;
		} else {
			dptr     = FUNC2(skb, 2);
			dptr[0]  = frametype;
			dptr[1]  = (lapb->vr << 1);
			dptr[1] |= poll_bit ? LAPB_EPF : 0;
		}
	} else {
		dptr   = FUNC2(skb, 1);
		*dptr  = frametype;
		*dptr |= poll_bit ? LAPB_SPF : 0;
		if ((frametype & LAPB_U) == LAPB_S)	/* S frames carry NR */
			*dptr |= (lapb->vr << 5);
	}

	FUNC1(lapb, skb, type);
}