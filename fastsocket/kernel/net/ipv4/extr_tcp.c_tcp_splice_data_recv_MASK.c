#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcp_splice_state {int /*<<< orphan*/  flags; int /*<<< orphan*/  pipe; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct tcp_splice_state* data; } ;
struct TYPE_5__ {int count; TYPE_1__ arg; } ;
typedef  TYPE_2__ read_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int FUNC1 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(read_descriptor_t *rd_desc, struct sk_buff *skb,
				unsigned int offset, size_t len)
{
	struct tcp_splice_state *tss = rd_desc->arg.data;
	int ret;

	ret = FUNC1(skb, offset, tss->pipe, FUNC0(rd_desc->count, len),
			      tss->flags);
	if (ret > 0)
		rd_desc->count -= ret;
	return ret;
}