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
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct net {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl6_dst; } ;
struct dst_entry {int error; } ;

/* Variables and functions */
 struct dst_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (struct net*,int /*<<< orphan*/ *,struct flowi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct dst_entry *FUNC4(struct net *net, int tos,
					  xfrm_address_t *saddr,
					  xfrm_address_t *daddr)
{
	struct flowi fl = {};
	struct dst_entry *dst;
	int err;

	FUNC3(&fl.fl6_dst, daddr, sizeof(fl.fl6_dst));
	if (saddr)
		FUNC3(&fl.fl6_src, saddr, sizeof(fl.fl6_src));

	dst = FUNC2(net, NULL, &fl);

	err = dst->error;
	if (dst->error) {
		FUNC1(dst);
		dst = FUNC0(err);
	}

	return dst;
}