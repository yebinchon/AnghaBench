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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ip_options {scalar_t__ optlen; } ;
struct TYPE_2__ {struct ip_options opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct ip_options*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_options*) ; 
 struct ip_options* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_options*) ; 

__attribute__((used)) static struct ip_options *FUNC5(struct sock *sk,
					      struct sk_buff *skb)
{
	struct ip_options *opt = &(FUNC0(skb)->opt);
	struct ip_options *dopt = NULL;

	if (opt && opt->optlen) {
		dopt = FUNC3(opt->optlen, GFP_ATOMIC);
		if (dopt) {
			if (FUNC1(dopt, skb)) {
				FUNC2(dopt);
				dopt = NULL;
			} else {
				FUNC4(dopt);
			}
		}
	}
	return dopt;
}