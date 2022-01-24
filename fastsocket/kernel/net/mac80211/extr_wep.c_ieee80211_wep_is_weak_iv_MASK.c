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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  keylen; } ;
struct ieee80211_key {TYPE_1__ conf; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct sk_buff *skb,
				     struct ieee80211_key *key)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	unsigned int hdrlen;
	u8 *ivpos;
	u32 iv;

	hdrlen = FUNC0(hdr->frame_control);
	ivpos = skb->data + hdrlen;
	iv = (ivpos[0] << 16) | (ivpos[1] << 8) | ivpos[2];

	return FUNC1(iv, key->conf.keylen);
}