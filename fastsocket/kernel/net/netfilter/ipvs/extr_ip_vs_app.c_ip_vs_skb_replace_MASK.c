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
struct sk_buff {char* data; int len; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  tot_len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

int FUNC12(struct sk_buff *skb, gfp_t pri,
		      char *o_buf, int o_len, char *n_buf, int n_len)
{
	int diff;
	int o_offset;
	int o_left;

	FUNC0(9);

	diff = n_len - o_len;
	o_offset = o_buf - (char *)skb->data;
	/* The length of left data after o_buf+o_len in the skb data */
	o_left = skb->len - (o_offset + o_len);

	if (diff <= 0) {
		FUNC5(o_buf + n_len, o_buf + o_len, o_left);
		FUNC4(o_buf, n_buf, n_len);
		FUNC11(skb, skb->len + diff);
	} else if (diff <= FUNC10(skb)) {
		FUNC9(skb, diff);
		FUNC5(o_buf + n_len, o_buf + o_len, o_left);
		FUNC4(o_buf, n_buf, n_len);
	} else {
		if (FUNC6(skb, FUNC8(skb), diff, pri))
			return -ENOMEM;
		FUNC9(skb, diff);
		FUNC5(skb->data + o_offset + n_len,
			skb->data + o_offset + o_len, o_left);
		FUNC7(skb, o_offset, n_buf, n_len);
	}

	/* must update the iph total length here */
	FUNC3(skb)->tot_len = FUNC2(skb->len);

	FUNC1(9);
	return 0;
}