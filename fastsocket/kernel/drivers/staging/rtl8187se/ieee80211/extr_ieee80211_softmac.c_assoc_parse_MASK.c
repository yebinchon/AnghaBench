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
typedef  int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_assoc_response_frame {int /*<<< orphan*/  status; int /*<<< orphan*/  aid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u16 FUNC2(struct sk_buff *skb, int *aid)
{
	struct ieee80211_assoc_response_frame *a;
	if (skb->len <  sizeof(struct ieee80211_assoc_response_frame)){
		FUNC0("invalid len in auth resp: %d\n", skb->len);
		return 0xcafe;
	}

	a = (struct ieee80211_assoc_response_frame*) skb->data;
	*aid = FUNC1(a->aid) & 0x3fff;
	return FUNC1(a->status);
}