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
struct sk_buff {int /*<<< orphan*/  pool_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSOCKET_INVALID_POOL_ID ; 

__attribute__((used)) static inline void FUNC0(void *foo)
{
	struct sk_buff *skb, *cskb;

	skb = (struct sk_buff *)foo;
	cskb = skb + 1;

	skb->pool_id = cskb->pool_id = FSOCKET_INVALID_POOL_ID;
}