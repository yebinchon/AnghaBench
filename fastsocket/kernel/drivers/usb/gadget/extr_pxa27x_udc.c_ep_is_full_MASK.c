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
struct pxa_ep {int /*<<< orphan*/  dir_in; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  UDCCSR ; 
 int UDCCSR0_IPR ; 
 int UDCCSR_BNF ; 
 scalar_t__ FUNC0 (struct pxa_ep*) ; 
 int FUNC1 (struct pxa_ep*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pxa_ep *ep)
{
	if (FUNC0(ep))
		return (FUNC1(ep, UDCCSR) & UDCCSR0_IPR);
	if (!ep->dir_in)
		return -EOPNOTSUPP;
	return (!(FUNC1(ep, UDCCSR) & UDCCSR_BNF));
}