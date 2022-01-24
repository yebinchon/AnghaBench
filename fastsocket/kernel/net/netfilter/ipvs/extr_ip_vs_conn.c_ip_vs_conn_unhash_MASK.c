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
struct ip_vs_conn {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  c_list; } ;

/* Variables and functions */
 int IP_VS_CONN_F_HASHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC7(struct ip_vs_conn *cp)
{
	unsigned hash;
	int ret;

	/* unhash it and decrease its reference counter */
	hash = FUNC3(cp);

	FUNC1(hash);
	FUNC5(&cp->lock);

	if (cp->flags & IP_VS_CONN_F_HASHED) {
		FUNC4(&cp->c_list);
		cp->flags &= ~IP_VS_CONN_F_HASHED;
		FUNC0(&cp->refcnt);
		ret = 1;
	} else
		ret = 0;

	FUNC6(&cp->lock);
	FUNC2(hash);

	return ret;
}