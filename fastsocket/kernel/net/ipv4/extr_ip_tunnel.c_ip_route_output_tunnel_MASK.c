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
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int oif; int proto; int /*<<< orphan*/  fl4_tos; void* fl4_src; void* fl4_dst; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  void* __be32 ;

/* Variables and functions */
 struct rtable* FUNC0 (int) ; 
 int FUNC1 (struct net*,struct rtable**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC2 (struct flowi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline struct rtable *FUNC3(struct net *net,
						    struct flowi *fl4,
						    int proto,
						    __be32 daddr, __be32 saddr,
						    __be32 key, __u8 tos, int oif)
{
	struct rtable *rt;
	int err;

	FUNC2(fl4, 0, sizeof(*fl4));
	fl4->oif = oif;
	fl4->fl4_dst = daddr;
	fl4->fl4_src = saddr;
	fl4->fl4_tos = tos;
	fl4->proto = proto;
	err = FUNC1(net, &rt, fl4);
	if (err)
		return FUNC0(err);
	return rt;
}