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

/* Variables and functions */
 int SKF_AD_OFF ; 
 void* FUNC0 (struct sk_buff*,int) ; 
 void* FUNC1 (struct sk_buff*,int,unsigned int,void*) ; 

__attribute__((used)) static inline void *FUNC2(struct sk_buff *skb, int k,
				 unsigned int size, void *buffer)
{
	if (k >= 0)
		return FUNC1(skb, k, size, buffer);
	else {
		if (k >= SKF_AD_OFF)
			return NULL;
		return FUNC0(skb, k);
	}
}