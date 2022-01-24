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
struct xfrm_tmpl {int dummy; } ;
struct xfrm_algo_desc {scalar_t__ available; } ;
struct sadb_prop {int dummy; } ;
struct sadb_comb {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfrm_tmpl*,struct xfrm_algo_desc*) ; 
 scalar_t__ FUNC1 (struct xfrm_tmpl*,struct xfrm_algo_desc*) ; 
 struct xfrm_algo_desc* FUNC2 (int) ; 
 struct xfrm_algo_desc* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct xfrm_tmpl *t)
{
	int i, k, sz = 0;

	for (i = 0; ; i++) {
		struct xfrm_algo_desc *ealg = FUNC3(i);
		if (!ealg)
			break;

		if (!(FUNC1(t, ealg) && ealg->available))
			continue;

		for (k = 1; ; k++) {
			struct xfrm_algo_desc *aalg = FUNC2(k);
			if (!aalg)
				break;

			if (FUNC0(t, aalg) && aalg->available)
				sz += sizeof(struct sadb_comb);
		}
	}
	return sz + sizeof(struct sadb_prop);
}