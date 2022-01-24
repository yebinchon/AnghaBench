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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_device {TYPE_1__* dev; } ;
struct TYPE_4__ {void* frame_ctl; int /*<<< orphan*/  addr1; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr3; } ;
struct ieee80211_authentication {TYPE_2__ header; void* algorithm; void* transaction; void* status; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_STYPE_AUTH ; 
 int WLAN_AUTH_OPEN ; 
 void* FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct sk_buff* FUNC3(struct ieee80211_device *ieee,int status, u8 *dest)
{
	struct sk_buff *skb;
	struct ieee80211_authentication *auth;

	skb = FUNC1(sizeof(struct ieee80211_authentication)+1);

	if (!skb)
		return NULL;

	skb->len = sizeof(struct ieee80211_authentication);

	auth = (struct ieee80211_authentication *)skb->data;

	auth->status = FUNC0(status);
	auth->transaction = FUNC0(2);
	auth->algorithm = FUNC0(WLAN_AUTH_OPEN);

	FUNC2(auth->header.addr3, ieee->dev->dev_addr, ETH_ALEN);
	FUNC2(auth->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
	FUNC2(auth->header.addr1, dest, ETH_ALEN);
	auth->header.frame_ctl = FUNC0(IEEE80211_STYPE_AUTH);
	return skb;


}