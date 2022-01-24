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
typedef  int u8 ;
typedef  void* u32 ;
struct sk_buff {scalar_t__ csum; } ;
struct TYPE_4__ {int flags; void* end_seq; void* seq; scalar_t__ sacked; } ;
struct TYPE_3__ {int gso_segs; scalar_t__ gso_type; scalar_t__ gso_size; } ;

/* Variables and functions */
 int TCPCB_FLAG_FIN ; 
 int TCPCB_FLAG_SYN ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb, u32 seq, u8 flags)
{
	skb->csum = 0;

	FUNC0(skb)->flags = flags;
	FUNC0(skb)->sacked = 0;

	FUNC1(skb)->gso_segs = 1;
	FUNC1(skb)->gso_size = 0;
	FUNC1(skb)->gso_type = 0;

	FUNC0(skb)->seq = seq;
	if (flags & (TCPCB_FLAG_SYN | TCPCB_FLAG_FIN))
		seq++;
	FUNC0(skb)->end_seq = seq;
}