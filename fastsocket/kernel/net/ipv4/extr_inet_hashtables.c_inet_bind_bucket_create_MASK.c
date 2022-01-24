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
struct net {int dummy; } ;
struct kmem_cache {int dummy; } ;
struct inet_bind_hashbucket {int /*<<< orphan*/  chain; } ;
struct inet_bind_bucket {unsigned short port; int /*<<< orphan*/  node; int /*<<< orphan*/  owners; scalar_t__ num_owners; scalar_t__ fastreuseport; scalar_t__ fastreuse; int /*<<< orphan*/  ib_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 struct inet_bind_bucket* FUNC3 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct inet_bind_bucket *FUNC5(struct kmem_cache *cachep,
						 struct net *net,
						 struct inet_bind_hashbucket *head,
						 const unsigned short snum)
{
	struct inet_bind_bucket *tb = FUNC3(cachep, GFP_ATOMIC);

	if (tb != NULL) {
		FUNC4(&tb->ib_net, FUNC2(net));
		tb->port      = snum;
		tb->fastreuse = 0;
		tb->fastreuseport = 0;
		tb->num_owners = 0;
		FUNC0(&tb->owners);
		FUNC1(&tb->node, &head->chain);
	}
	return tb;
}