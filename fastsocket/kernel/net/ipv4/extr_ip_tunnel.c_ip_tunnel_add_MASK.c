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
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {int /*<<< orphan*/  hash_node; int /*<<< orphan*/  parms; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 struct hlist_head* FUNC1 (struct ip_tunnel_net*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ip_tunnel_net *itn, struct ip_tunnel *t)
{
	struct hlist_head *head = FUNC1(itn, &t->parms);

	FUNC0(&t->hash_node, head);
}