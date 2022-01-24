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
struct sock {int dummy; } ;
struct llc_sap {int dummy; } ;
struct llc_addr {int dummy; } ;

/* Variables and functions */
 struct sock* FUNC0 (struct llc_sap*,struct llc_addr*,struct llc_addr*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct sock *FUNC3(struct llc_sap *sap,
				    struct llc_addr *daddr,
				    struct llc_addr *laddr)
{
	struct sock *sk;

	FUNC1();
	sk = FUNC0(sap, daddr, laddr);
	FUNC2();
	return sk;
}