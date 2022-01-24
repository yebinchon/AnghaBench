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
struct rtattr {int rta_type; int rta_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rtattr*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*,scalar_t__) ; 

void FUNC6(struct sk_buff *skb, int attrtype, int attrlen, const void *data)
{
	struct rtattr *rta;
	int size = FUNC2(attrlen);

	rta = (struct rtattr*)FUNC5(skb, FUNC0(size));
	rta->rta_type = attrtype;
	rta->rta_len = size;
	FUNC3(FUNC1(rta), data, attrlen);
	FUNC4(FUNC1(rta) + attrlen, 0, FUNC0(size) - size);
}