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
struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_user_polexpire {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int /*<<< orphan*/  security; } ;
struct xfrm_mark {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline size_t FUNC4(struct xfrm_policy *xp)
{
	return FUNC0(sizeof(struct xfrm_user_polexpire))
	       + FUNC1(sizeof(struct xfrm_user_tmpl) * xp->xfrm_nr)
	       + FUNC1(FUNC3(xp->security))
	       + FUNC1(sizeof(struct xfrm_mark))
	       + FUNC2();
}