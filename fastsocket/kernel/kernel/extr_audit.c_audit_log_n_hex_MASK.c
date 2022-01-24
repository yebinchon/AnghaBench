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
struct sk_buff {int dummy; } ;
struct audit_buffer {struct sk_buff* skb; } ;

/* Variables and functions */
 int AUDIT_BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct audit_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,size_t) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 

void FUNC5(struct audit_buffer *ab, const unsigned char *buf,
		size_t len)
{
	int i, avail, new_len;
	unsigned char *ptr;
	struct sk_buff *skb;
	static const unsigned char *hex = "0123456789ABCDEF";

	if (!ab)
		return;

	FUNC0(!ab->skb);
	skb = ab->skb;
	avail = FUNC4(skb);
	new_len = len<<1;
	if (new_len >= avail) {
		/* Round the buffer request up to the next multiple */
		new_len = AUDIT_BUFSIZ*(((new_len-avail)/AUDIT_BUFSIZ) + 1);
		avail = FUNC1(ab, new_len);
		if (!avail)
			return;
	}

	ptr = FUNC3(skb);
	for (i=0; i<len; i++) {
		*ptr++ = hex[(buf[i] & 0xF0)>>4]; /* Upper nibble */
		*ptr++ = hex[buf[i] & 0x0F];	  /* Lower nibble */
	}
	*ptr = 0;
	FUNC2(skb, len << 1); /* new string is twice the old string */
}