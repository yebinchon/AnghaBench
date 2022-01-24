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
struct napi_struct {int dummy; } ;
typedef  int /*<<< orphan*/  gro_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRO_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct napi_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct napi_struct*) ; 

__attribute__((used)) static inline gro_result_t FUNC3(struct napi_struct *napi)
{
	struct sk_buff *skb = FUNC2(napi);

	if (!skb)
		return GRO_DROP;

	return FUNC1(napi, skb, FUNC0(napi, skb));
}