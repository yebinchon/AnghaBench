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
struct netns_proto_gre {int /*<<< orphan*/  keymap_list; int /*<<< orphan*/  keymap_lock; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netns_proto_gre*) ; 
 struct netns_proto_gre* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net*,int /*<<< orphan*/ ,struct netns_proto_gre*) ; 
 int /*<<< orphan*/  proto_gre_net_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net *net)
{
	struct netns_proto_gre *net_gre;
	int rv;

	net_gre = FUNC2(sizeof(struct netns_proto_gre), GFP_KERNEL);
	if (!net_gre)
		return -ENOMEM;
	FUNC4(&net_gre->keymap_lock);
	FUNC0(&net_gre->keymap_list);

	rv = FUNC3(net, proto_gre_net_id, net_gre);
	if (rv < 0)
		FUNC1(net_gre);
	return rv;
}