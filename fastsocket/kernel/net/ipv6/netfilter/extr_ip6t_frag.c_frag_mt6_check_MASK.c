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
struct xt_mtchk_param {struct ip6t_frag* matchinfo; } ;
struct ip6t_frag {int invflags; } ;

/* Variables and functions */
 int IP6T_FRAG_INV_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static bool FUNC1(const struct xt_mtchk_param *par)
{
	const struct ip6t_frag *fraginfo = par->matchinfo;

	if (fraginfo->invflags & ~IP6T_FRAG_INV_MASK) {
		FUNC0("ip6t_frag: unknown flags %X\n", fraginfo->invflags);
		return false;
	}
	return true;
}