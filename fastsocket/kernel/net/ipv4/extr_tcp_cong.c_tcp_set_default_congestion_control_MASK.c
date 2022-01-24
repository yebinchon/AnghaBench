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
struct tcp_congestion_ops {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOENT ; 
 int /*<<< orphan*/  TCP_CONG_NON_RESTRICTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tcp_congestion_ops* FUNC5 (char const*) ; 
 int /*<<< orphan*/  tcp_cong_list ; 
 int /*<<< orphan*/  tcp_cong_list_lock ; 

int FUNC6(const char *name)
{
	struct tcp_congestion_ops *ca;
	int ret = -ENOENT;

	FUNC3(&tcp_cong_list_lock);
	ca = FUNC5(name);
#ifdef CONFIG_MODULES
	if (!ca && capable(CAP_NET_ADMIN)) {
		spin_unlock(&tcp_cong_list_lock);

		request_module("tcp_%s", name);
		spin_lock(&tcp_cong_list_lock);
		ca = tcp_ca_find(name);
	}
#endif

	if (ca) {
		ca->flags |= TCP_CONG_NON_RESTRICTED;	/* default is always allowed */
		FUNC1(&ca->list, &tcp_cong_list);
		ret = 0;
	}
	FUNC4(&tcp_cong_list_lock);

	return ret;
}