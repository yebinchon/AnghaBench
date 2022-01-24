#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wlp_tx_hdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct untd_hdr_cmp {scalar_t__ padding; TYPE_1__ hdr; } ;
struct sk_buff {scalar_t__ len; } ;
struct i1480u_tx {struct wlp_tx_hdr* wlp_tx_hdr; struct sk_buff* skb; int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  i1480u_PKT_FRAG_CMP ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC6(struct i1480u_tx *wtx, struct sk_buff *skb,
		       gfp_t gfp_mask)
{
	struct untd_hdr_cmp *untd_hdr_cmp;
	struct wlp_tx_hdr *wlp_tx_hdr;

	wtx->buf = NULL;
	wtx->skb = skb;
	FUNC0(FUNC3(skb) < sizeof(*wlp_tx_hdr));
	wlp_tx_hdr = (void *) FUNC1(skb, sizeof(*wlp_tx_hdr));
	wtx->wlp_tx_hdr = wlp_tx_hdr;
	FUNC0(FUNC3(skb) < sizeof(*untd_hdr_cmp));
	untd_hdr_cmp = (void *) FUNC1(skb, sizeof(*untd_hdr_cmp));

	FUNC5(&untd_hdr_cmp->hdr, i1480u_PKT_FRAG_CMP);
	FUNC4(&untd_hdr_cmp->hdr, 0);
	untd_hdr_cmp->hdr.len = FUNC2(skb->len - sizeof(*untd_hdr_cmp));
	untd_hdr_cmp->padding = 0;
	return 0;
}