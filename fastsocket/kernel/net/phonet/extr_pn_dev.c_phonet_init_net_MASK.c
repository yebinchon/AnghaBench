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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct phonet_net {TYPE_1__ pndevs; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct phonet_net*) ; 
 struct phonet_net* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ,struct phonet_net*) ; 
 int /*<<< orphan*/  phonet_net_id ; 
 int /*<<< orphan*/  pn_sock_seq_fops ; 
 int /*<<< orphan*/  FUNC4 (struct net*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net *net)
{
	struct phonet_net *pnn = FUNC2(sizeof(*pnn), GFP_KERNEL);
	if (!pnn)
		return -ENOMEM;

	if (!FUNC4(net, "phonet", 0, &pn_sock_seq_fops)) {
		FUNC1(pnn);
		return -ENOMEM;
	}

	FUNC0(&pnn->pndevs.list);
	FUNC5(&pnn->pndevs.lock);
	FUNC3(net, phonet_net_id, pnn);
	return 0;
}