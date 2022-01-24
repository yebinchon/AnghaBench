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
struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl8192_rx_info {int out_pipe; struct net_device* dev; struct urb* urb; } ;
struct r8192_priv {int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  udev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_RX_URB ; 
 int /*<<< orphan*/  RX_URB_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  rtl8192_rx_isr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device*dev)
{
        struct r8192_priv *priv = (struct r8192_priv *)FUNC1(dev);
        struct urb *entry;
        struct sk_buff *skb;
        struct rtl8192_rx_info *info;

	/* nomal packet rx procedure */
        while (FUNC3(&priv->rx_queue) < MAX_RX_URB) {
                skb = FUNC0(RX_URB_SIZE, GFP_KERNEL);
                if (!skb)
                        break;
	        entry = FUNC6(0, GFP_KERNEL);
                if (!entry) {
                        FUNC2(skb);
                        break;
                }
//		printk("nomal packet IN request!\n");
                FUNC7(entry, priv->udev,
                                  FUNC8(priv->udev, 3), FUNC5(skb),
                                  RX_URB_SIZE, rtl8192_rx_isr, skb);
                info = (struct rtl8192_rx_info *) skb->cb;
                info->urb = entry;
                info->dev = dev;
		info->out_pipe = 3; //denote rx normal packet queue
                FUNC4(&priv->rx_queue, skb);
                FUNC9(entry, GFP_KERNEL);
        }

	/* command packet rx procedure */
        while (FUNC3(&priv->rx_queue) < MAX_RX_URB + 3) {
//		printk("command packet IN request!\n");
                skb = FUNC0(RX_URB_SIZE ,GFP_KERNEL);
                if (!skb)
                        break;
                entry = FUNC6(0, GFP_KERNEL);
                if (!entry) {
                        FUNC2(skb);
                        break;
                }
                FUNC7(entry, priv->udev,
                                  FUNC8(priv->udev, 9), FUNC5(skb),
                                  RX_URB_SIZE, rtl8192_rx_isr, skb);
                info = (struct rtl8192_rx_info *) skb->cb;
                info->urb = entry;
                info->dev = dev;
		   info->out_pipe = 9; //denote rx cmd packet queue
                FUNC4(&priv->rx_queue, skb);
		FUNC9(entry, GFP_KERNEL);
        }

        return 0;
}