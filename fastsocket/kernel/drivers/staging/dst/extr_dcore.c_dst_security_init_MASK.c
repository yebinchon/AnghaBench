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
struct dst_secure_user {int dummy; } ;
struct dst_secure {int /*<<< orphan*/  sec_entry; int /*<<< orphan*/  sec; } ;
struct dst_node {int /*<<< orphan*/  security_lock; int /*<<< orphan*/  security_list; } ;
struct dst_ctl {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dst_secure* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dst_node *n, struct dst_ctl *ctl,
		void *data, unsigned int size)
{
	struct dst_secure *s;

	if (!n)
		return -ENODEV;

	if (size != sizeof(struct dst_secure_user))
		return -EINVAL;

	s = FUNC0(sizeof(struct dst_secure), GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	FUNC2(&s->sec, data, size);

	FUNC3(&n->security_lock);
	FUNC1(&s->sec_entry, &n->security_list);
	FUNC4(&n->security_lock);

	return 0;
}