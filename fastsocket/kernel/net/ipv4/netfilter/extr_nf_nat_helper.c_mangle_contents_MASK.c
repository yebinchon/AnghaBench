#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; scalar_t__ network_header; scalar_t__ tail; } ;
struct TYPE_3__ {int /*<<< orphan*/  tot_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 unsigned char* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static void FUNC11(struct sk_buff *skb,
			    unsigned int dataoff,
			    unsigned int match_offset,
			    unsigned int match_len,
			    const char *rep_buffer,
			    unsigned int rep_len)
{
	unsigned char *data;

	FUNC0(FUNC8(skb));
	data = FUNC9(skb) + dataoff;

	/* move post-replacement */
	FUNC6(data + match_offset + rep_len,
		data + match_offset + match_len,
		skb->tail - (skb->network_header + dataoff +
			     match_offset + match_len));

	/* insert data from buffer */
	FUNC5(data + match_offset, rep_buffer, rep_len);

	/* update skb info */
	if (rep_len > match_len) {
		FUNC7("nf_nat_mangle_packet: Extending packet by "
			 "%u from %u bytes\n", rep_len - match_len, skb->len);
		FUNC10(skb, rep_len - match_len);
	} else {
		FUNC7("nf_nat_mangle_packet: Shrinking packet from "
			 "%u from %u bytes\n", match_len - rep_len, skb->len);
		FUNC1(skb, skb->len + rep_len - match_len);
	}

	/* fix IP hdr checksum information */
	FUNC3(skb)->tot_len = FUNC2(skb->len);
	FUNC4(FUNC3(skb));
}