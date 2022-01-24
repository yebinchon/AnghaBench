#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;
struct svc_cacherep {scalar_t__ c_type; int /*<<< orphan*/  c_lru; int /*<<< orphan*/  c_hash; TYPE_1__ c_replvec; } ;

/* Variables and functions */
 scalar_t__ RC_REPLBUFF ; 
 int drc_mem_usage ; 
 int /*<<< orphan*/  drc_slab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct svc_cacherep*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_drc_entries ; 

__attribute__((used)) static void
FUNC5(struct svc_cacherep *rp)
{
	if (rp->c_type == RC_REPLBUFF && rp->c_replvec.iov_base) {
		drc_mem_usage -= rp->c_replvec.iov_len;
		FUNC2(rp->c_replvec.iov_base);
	}
	if (!FUNC1(&rp->c_hash))
		FUNC0(&rp->c_hash);
	FUNC4(&rp->c_lru);
	--num_drc_entries;
	drc_mem_usage -= sizeof(*rp);
	FUNC3(drc_slab, rp);
}