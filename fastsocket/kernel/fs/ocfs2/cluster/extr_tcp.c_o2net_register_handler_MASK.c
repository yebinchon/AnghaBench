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
struct rb_node {int dummy; } ;
struct o2net_msg_handler {int /*<<< orphan*/  nh_unregister_item; int /*<<< orphan*/  nh_node; int /*<<< orphan*/  nh_kref; scalar_t__ nh_key; scalar_t__ nh_max_len; scalar_t__ nh_msg_type; int /*<<< orphan*/ * nh_post_func; void* nh_func_data; int /*<<< orphan*/ * nh_func; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  o2net_post_msg_handler_func ;
typedef  int /*<<< orphan*/  o2net_msg_handler_func ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_TCP ; 
 scalar_t__ O2NET_MAX_PAYLOAD_BYTES ; 
 int /*<<< orphan*/  FUNC1 (struct o2net_msg_handler*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct o2net_msg_handler* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  o2net_handler_lock ; 
 int /*<<< orphan*/  o2net_handler_tree ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,scalar_t__,struct rb_node***,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(u32 msg_type, u32 key, u32 max_len,
			   o2net_msg_handler_func *func, void *data,
			   o2net_post_msg_handler_func *post_func,
			   struct list_head *unreg_list)
{
	struct o2net_msg_handler *nmh = NULL;
	struct rb_node **p, *parent;
	int ret = 0;

	if (max_len > O2NET_MAX_PAYLOAD_BYTES) {
		FUNC5(0, "max_len for message handler out of range: %u\n",
			max_len);
		ret = -EINVAL;
		goto out;
	}

	if (!msg_type) {
		FUNC5(0, "no message type provided: %u, %p\n", msg_type, func);
		ret = -EINVAL;
		goto out;

	}
	if (!func) {
		FUNC5(0, "no message handler provided: %u, %p\n",
		       msg_type, func);
		ret = -EINVAL;
		goto out;
	}

       	nmh = FUNC3(sizeof(struct o2net_msg_handler), GFP_NOFS);
	if (nmh == NULL) {
		ret = -ENOMEM;
		goto out;
	}

	nmh->nh_func = func;
	nmh->nh_func_data = data;
	nmh->nh_post_func = post_func;
	nmh->nh_msg_type = msg_type;
	nmh->nh_max_len = max_len;
	nmh->nh_key = key;
	/* the tree and list get this ref.. they're both removed in
	 * unregister when this ref is dropped */
	FUNC2(&nmh->nh_kref);
	FUNC0(&nmh->nh_unregister_item);

	FUNC10(&o2net_handler_lock);
	if (FUNC7(msg_type, key, &p, &parent))
		ret = -EEXIST;
	else {
	        FUNC9(&nmh->nh_node, parent, p);
		FUNC8(&nmh->nh_node, &o2net_handler_tree);
		FUNC4(&nmh->nh_unregister_item, unreg_list);

		FUNC5(ML_TCP, "registered handler func %p type %u key %08x\n",
		     func, msg_type, key);
		/* we've had some trouble with handlers seemingly vanishing. */
		FUNC6(FUNC7(msg_type, key, &p,
							  &parent) == NULL,
			        "couldn't find handler we *just* registerd "
				"for type %u key %08x\n", msg_type, key);
	}
	FUNC11(&o2net_handler_lock);
	if (ret)
		goto out;

out:
	if (ret)
		FUNC1(nmh);

	return ret;
}