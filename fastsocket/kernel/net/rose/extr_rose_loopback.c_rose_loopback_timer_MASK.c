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
struct sock {int dummy; } ;
struct sk_buff {int* data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  rose_address ;

/* Variables and functions */
 unsigned short ROSE_CALL_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  loopback_queue ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rose_loopback_neigh ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,unsigned int) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(unsigned long param)
{
	struct sk_buff *skb;
	struct net_device *dev;
	rose_address *dest;
	struct sock *sk;
	unsigned short frametype;
	unsigned int lci_i, lci_o;

	while ((skb = FUNC5(&loopback_queue)) != NULL) {
		lci_i     = ((skb->data[0] << 8) & 0xF00) + ((skb->data[1] << 0) & 0x0FF);
		frametype = skb->data[2];
		dest      = (rose_address *)(skb->data + 4);
		lci_o     = 0xFFF - lci_i;

		FUNC6(skb);

		sk = FUNC2(lci_o, rose_loopback_neigh);
		if (sk) {
			if (FUNC3(sk, skb) == 0)
				FUNC0(skb);
			continue;
		}

		if (frametype == ROSE_CALL_REQUEST) {
			if ((dev = FUNC1(dest)) != NULL) {
				if (FUNC4(skb, dev, rose_loopback_neigh, lci_o) == 0)
					FUNC0(skb);
			} else {
				FUNC0(skb);
			}
		} else {
			FUNC0(skb);
		}
	}
}