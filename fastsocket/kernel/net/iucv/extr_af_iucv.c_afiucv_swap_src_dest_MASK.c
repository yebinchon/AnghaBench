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
struct sk_buff {scalar_t__ data; } ;
struct af_iucv_trans_hdr {char* destUserID; char* destAppName; char* srcUserID; char* srcAppName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	struct af_iucv_trans_hdr *trans_hdr =
				(struct af_iucv_trans_hdr *)skb->data;
	char tmpID[8];
	char tmpName[8];

	FUNC0(trans_hdr->destUserID, sizeof(trans_hdr->destUserID));
	FUNC0(trans_hdr->destAppName, sizeof(trans_hdr->destAppName));
	FUNC0(trans_hdr->srcUserID, sizeof(trans_hdr->srcUserID));
	FUNC0(trans_hdr->srcAppName, sizeof(trans_hdr->srcAppName));
	FUNC1(tmpID, trans_hdr->srcUserID, 8);
	FUNC1(tmpName, trans_hdr->srcAppName, 8);
	FUNC1(trans_hdr->srcUserID, trans_hdr->destUserID, 8);
	FUNC1(trans_hdr->srcAppName, trans_hdr->destAppName, 8);
	FUNC1(trans_hdr->destUserID, tmpID, 8);
	FUNC1(trans_hdr->destAppName, tmpName, 8);
	FUNC3(skb, ETH_HLEN);
	FUNC2(skb->data, 0, ETH_HLEN);
}