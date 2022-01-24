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
struct tcindex_data {int mask; int fall_through; int /*<<< orphan*/  hash; } ;
struct tcf_proto {struct tcindex_data* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_HASH_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tcindex_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct tcf_proto*) ; 

__attribute__((used)) static int FUNC2(struct tcf_proto *tp)
{
	struct tcindex_data *p;

	FUNC1("tcindex_init(tp %p)\n", tp);
	p = FUNC0(sizeof(struct tcindex_data), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	p->mask = 0xffff;
	p->hash = DEFAULT_HASH_SIZE;
	p->fall_through = 1;

	tp->root = p;
	return 0;
}