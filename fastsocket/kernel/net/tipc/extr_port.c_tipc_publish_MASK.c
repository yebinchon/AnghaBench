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
typedef  scalar_t__ u32 ;
struct tipc_name_seq {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; } ;
struct publication {int /*<<< orphan*/  pport_list; } ;
struct TYPE_2__ {int published; int /*<<< orphan*/  ref; scalar_t__ connected; } ;
struct port {scalar_t__ pub_count; TYPE_1__ publ; int /*<<< orphan*/  publications; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EINVAL ; 
 unsigned int TIPC_NODE_SCOPE ; 
 unsigned int TIPC_ZONE_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,struct port*,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct publication* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 struct port* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct port*) ; 

int FUNC5(u32 ref, unsigned int scope, struct tipc_name_seq const *seq)
{
	struct port *p_ptr;
	struct publication *publ;
	u32 key;
	int res = -EINVAL;

	p_ptr = FUNC3(ref);
	if (!p_ptr)
		return -EINVAL;

	FUNC0("tipc_publ %u, p_ptr = %x, conn = %x, scope = %x, "
	    "lower = %u, upper = %u\n",
	    ref, p_ptr, p_ptr->publ.connected, scope, seq->lower, seq->upper);
	if (p_ptr->publ.connected)
		goto exit;
	if (seq->lower > seq->upper)
		goto exit;
	if ((scope < TIPC_ZONE_SCOPE) || (scope > TIPC_NODE_SCOPE))
		goto exit;
	key = ref + p_ptr->pub_count + 1;
	if (key == ref) {
		res = -EADDRINUSE;
		goto exit;
	}
	publ = FUNC2(seq->type, seq->lower, seq->upper,
				    scope, p_ptr->publ.ref, key);
	if (publ) {
		FUNC1(&publ->pport_list, &p_ptr->publications);
		p_ptr->pub_count++;
		p_ptr->publ.published = 1;
		res = 0;
	}
exit:
	FUNC4(p_ptr);
	return res;
}