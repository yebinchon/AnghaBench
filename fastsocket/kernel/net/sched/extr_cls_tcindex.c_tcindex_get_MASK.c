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
typedef  scalar_t__ u32 ;
struct tcindex_filter_result {int dummy; } ;
struct tcindex_data {scalar_t__ alloc_hash; scalar_t__ perfect; } ;
struct tcf_proto {int dummy; } ;

/* Variables and functions */
 struct tcindex_data* FUNC0 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct tcf_proto*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct tcindex_filter_result*) ; 
 struct tcindex_filter_result* FUNC3 (struct tcindex_data*,scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC4(struct tcf_proto *tp, u32 handle)
{
	struct tcindex_data *p = FUNC0(tp);
	struct tcindex_filter_result *r;

	FUNC1("tcindex_get(tp %p,handle 0x%08x)\n", tp, handle);
	if (p->perfect && handle >= p->alloc_hash)
		return 0;
	r = FUNC3(p, handle);
	return r && FUNC2(r) ? (unsigned long) r : 0UL;
}