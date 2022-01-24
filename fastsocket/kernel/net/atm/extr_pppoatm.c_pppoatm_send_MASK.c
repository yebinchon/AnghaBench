#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {char* data; int /*<<< orphan*/  truesize; } ;
struct pppoatm_vcc {int flags; int encaps; TYPE_1__* atmvcc; } ;
struct ppp_channel {int dummy; } ;
struct TYPE_8__ {TYPE_1__* vcc; int /*<<< orphan*/  atm_options; } ;
struct TYPE_7__ {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct TYPE_6__ {scalar_t__ (* send ) (TYPE_1__*,struct sk_buff*) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  atm_options; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int DROP_PACKET ; 
 int LLC_LEN ; 
 int SC_COMP_PROT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pppoatm_vcc* FUNC3 (struct ppp_channel*) ; 
#define  e_autodetect 130 
#define  e_llc 129 
#define  e_vc 128 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pppllc ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC13(struct ppp_channel *chan, struct sk_buff *skb)
{
	struct pppoatm_vcc *pvcc = FUNC3(chan);
	FUNC0(skb)->vcc = pvcc->atmvcc;
	FUNC6("pppoatm_send (skb=0x%p, vcc=0x%p)\n", skb, pvcc->atmvcc);
	if (skb->data[0] == '\0' && (pvcc->flags & SC_COMP_PROT))
		(void) FUNC9(skb, 1);
	switch (pvcc->encaps) {		/* LLC encapsulation needed */
	case e_llc:
		if (FUNC8(skb) < LLC_LEN) {
			struct sk_buff *n;
			n = FUNC11(skb, LLC_LEN);
			if (n != NULL &&
			    !FUNC1(pvcc->atmvcc, n->truesize)) {
				FUNC4(n);
				goto nospace;
			}
			FUNC4(skb);
			if ((skb = n) == NULL)
				return DROP_PACKET;
		} else if (!FUNC1(pvcc->atmvcc, skb->truesize))
			goto nospace;
		FUNC5(FUNC10(skb, LLC_LEN), pppllc, LLC_LEN);
		break;
	case e_vc:
		if (!FUNC1(pvcc->atmvcc, skb->truesize))
			goto nospace;
		break;
	case e_autodetect:
		FUNC6("Trying to send without setting encaps!\n");
		FUNC4(skb);
		return 1;
	}

	FUNC2(skb->truesize, &FUNC7(FUNC0(skb)->vcc)->sk_wmem_alloc);
	FUNC0(skb)->atm_options = FUNC0(skb)->vcc->atm_options;
	FUNC6("atm_skb(%p)->vcc(%p)->dev(%p)\n", skb, FUNC0(skb)->vcc,
	    FUNC0(skb)->vcc->dev);
	return FUNC0(skb)->vcc->send(FUNC0(skb)->vcc, skb)
	    ? DROP_PACKET : 1;
    nospace:
	/*
	 * We don't have space to send this SKB now, but we might have
	 * already applied SC_COMP_PROT compression, so may need to undo
	 */
	if ((pvcc->flags & SC_COMP_PROT) && FUNC8(skb) > 0 &&
	    skb->data[-1] == '\0')
		(void) FUNC10(skb, 1);
	return 0;
}