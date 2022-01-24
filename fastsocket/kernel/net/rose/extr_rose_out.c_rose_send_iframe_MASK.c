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
struct rose_sock {int vr; int vs; int /*<<< orphan*/  neighbour; } ;

/* Variables and functions */
 struct rose_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, struct sk_buff *skb)
{
	struct rose_sock *rose = FUNC0(sk);

	if (skb == NULL)
		return;

	skb->data[2] |= (rose->vr << 5) & 0xE0;
	skb->data[2] |= (rose->vs << 1) & 0x0E;

	FUNC1(sk);

	FUNC2(skb, rose->neighbour);
}