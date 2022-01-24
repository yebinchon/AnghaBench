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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct ieee80211_info_element {int dummy; } ;
struct ieee80211_authentication {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  MFIE_TYPE_CHALLENGE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline u16 FUNC4(struct sk_buff *skb, u8** challenge, int *chlen)
{
	struct ieee80211_authentication *a;
	u8 *t;
	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))){
		FUNC0("invalid len in auth resp: %d\n",skb->len);
		return 0xcafe;
	}
	*challenge = NULL;
	a = (struct ieee80211_authentication*) skb->data;
	if(skb->len > (sizeof(struct ieee80211_authentication) +3)){
		t = skb->data + sizeof(struct ieee80211_authentication);

		if(*(t++) == MFIE_TYPE_CHALLENGE){
			*chlen = *(t++);
			*challenge = (u8*)FUNC2(*chlen, GFP_ATOMIC);
			FUNC3(*challenge, t, *chlen);
		}
	}

	return FUNC1(a->status);

}