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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCM_SECURITY ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  FUNC0 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct msghdr *msg, struct sk_buff *skb)
{
	char *secdata;
	u32 seclen, secid;
	int err;

	err = FUNC3(NULL, skb, &secid);
	if (err)
		return;

	err = FUNC2(secid, &secdata, &seclen);
	if (err)
		return;

	FUNC0(msg, SOL_IP, SCM_SECURITY, seclen, secdata);
	FUNC1(secdata, seclen);
}