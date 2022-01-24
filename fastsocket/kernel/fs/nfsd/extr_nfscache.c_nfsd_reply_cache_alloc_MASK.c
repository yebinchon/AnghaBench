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
struct svc_cacherep {int /*<<< orphan*/  c_hash; int /*<<< orphan*/  c_lru; int /*<<< orphan*/  c_type; int /*<<< orphan*/  c_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RC_NOCACHE ; 
 int /*<<< orphan*/  RC_UNUSED ; 
 int /*<<< orphan*/  drc_slab ; 
 struct svc_cacherep* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct svc_cacherep *
FUNC3(void)
{
	struct svc_cacherep	*rp;

	rp = FUNC2(drc_slab, GFP_KERNEL);
	if (rp) {
		rp->c_state = RC_UNUSED;
		rp->c_type = RC_NOCACHE;
		FUNC1(&rp->c_lru);
		FUNC0(&rp->c_hash);
	}
	return rp;
}