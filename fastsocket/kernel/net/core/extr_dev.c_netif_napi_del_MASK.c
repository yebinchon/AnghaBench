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
struct sk_buff {struct sk_buff* next; } ;
struct napi_struct {scalar_t__ gro_count; struct sk_buff* gro_list; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 

void FUNC3(struct napi_struct *napi)
{
	struct sk_buff *skb, *next;

	FUNC1(&napi->dev_list);
	FUNC2(napi);

	for (skb = napi->gro_list; skb; skb = next) {
		next = skb->next;
		skb->next = NULL;
		FUNC0(skb);
	}

	napi->gro_list = NULL;
	napi->gro_count = 0;
}