#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  protonum; } ;
struct TYPE_3__ {int /*<<< orphan*/  l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

bool FUNC5(struct nf_conntrack_tuple *inverse,
			  const struct nf_conntrack_tuple *orig)
{
	bool ret;

	FUNC3();
	ret = FUNC2(inverse, orig,
				 FUNC0(orig->src.l3num),
				 FUNC1(orig->src.l3num,
						      orig->dst.protonum));
	FUNC4();
	return ret;
}