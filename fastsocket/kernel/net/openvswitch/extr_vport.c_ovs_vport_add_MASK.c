#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vport_parms {scalar_t__ type; } ;
struct vport {int /*<<< orphan*/  hash_node; TYPE_1__* ops; int /*<<< orphan*/  dp; } ;
struct hlist_head {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; struct vport* (* create ) (struct vport_parms const*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_name ) (struct vport*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_2__**) ; 
 int EAFNOSUPPORT ; 
 struct vport* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vport*) ; 
 int FUNC3 (struct vport*) ; 
 struct hlist_head* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct vport* FUNC7 (struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC8 (struct vport*) ; 
 TYPE_2__** vport_ops_list ; 

struct vport *FUNC9(const struct vport_parms *parms)
{
	struct vport *vport;
	int err = 0;
	int i;

	for (i = 0; i < FUNC0(vport_ops_list); i++) {
		if (vport_ops_list[i]->type == parms->type) {
			struct hlist_head *bucket;

			vport = vport_ops_list[i]->create(parms);
			if (FUNC2(vport)) {
				err = FUNC3(vport);
				goto out;
			}

			bucket = FUNC4(FUNC6(vport->dp),
					     vport->ops->get_name(vport));
			FUNC5(&vport->hash_node, bucket);
			return vport;
		}
	}

	err = -EAFNOSUPPORT;

out:
	return FUNC1(err);
}