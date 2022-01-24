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
struct ip_vs_conn {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  cport; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int IP_VS_CONN_F_NO_CPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  ip_vs_conn_no_cport_cnt ; 
 scalar_t__ FUNC2 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ip_vs_conn *cp, __be16 cport)
{
	if (FUNC2(cp)) {
		FUNC3(&cp->lock);
		if (cp->flags & IP_VS_CONN_F_NO_CPORT) {
			FUNC0(&ip_vs_conn_no_cport_cnt);
			cp->flags &= ~IP_VS_CONN_F_NO_CPORT;
			cp->cport = cport;
		}
		FUNC4(&cp->lock);

		/* hash on new dport */
		FUNC1(cp);
	}
}