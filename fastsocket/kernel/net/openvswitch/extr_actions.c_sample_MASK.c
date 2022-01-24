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
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
#define  OVS_SAMPLE_ATTR_ACTIONS 129 
#define  OVS_SAMPLE_ATTR_PROBABILITY 128 
 int FUNC0 (struct datapath*,struct sk_buff*,struct nlattr*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct nlattr* FUNC2 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const*) ; 
 int FUNC4 (struct nlattr const*) ; 
 struct nlattr* FUNC5 (struct nlattr const*,int*) ; 
 int FUNC6 (struct nlattr const*) ; 

__attribute__((used)) static int FUNC7(struct datapath *dp, struct sk_buff *skb,
		  const struct nlattr *attr)
{
	const struct nlattr *acts_list = NULL;
	const struct nlattr *a;
	int rem;

	for (a = FUNC2(attr), rem = FUNC4(attr); rem > 0;
		 a = FUNC5(a, &rem)) {
		switch (FUNC6(a)) {
		case OVS_SAMPLE_ATTR_PROBABILITY:
			if (FUNC1() >= FUNC3(a))
				return 0;
			break;

		case OVS_SAMPLE_ATTR_ACTIONS:
			acts_list = a;
			break;
		}
	}

	return FUNC0(dp, skb, FUNC2(acts_list),
						 FUNC4(acts_list), true);
}