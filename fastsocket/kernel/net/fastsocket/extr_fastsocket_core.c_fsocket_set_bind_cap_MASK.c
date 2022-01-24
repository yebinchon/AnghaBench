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
struct cred {int /*<<< orphan*/  cap_effective; } ;
typedef  int /*<<< orphan*/  kernel_cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(kernel_cap_t *p)
{
	kernel_cap_t pE, pI, pP, pN;
	struct cred *new;

	FUNC0(current, &pE, &pI, &pP);
	pN = pE;

	FUNC1(pN, CAP_NET_BIND_SERVICE);

	//TODO: Ugly hack.
	new = (struct cred *)FUNC2();
	new->cap_effective = pN;

	*p = pE;
}