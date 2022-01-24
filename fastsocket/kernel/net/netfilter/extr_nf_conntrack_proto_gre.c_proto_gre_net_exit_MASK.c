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
struct netns_proto_gre {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netns_proto_gre*) ; 
 struct netns_proto_gre* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  proto_gre_net_id ; 

__attribute__((used)) static void FUNC3(struct net *net)
{
	struct netns_proto_gre *net_gre = FUNC1(net, proto_gre_net_id);

	FUNC2(net);
	FUNC0(net_gre);
}