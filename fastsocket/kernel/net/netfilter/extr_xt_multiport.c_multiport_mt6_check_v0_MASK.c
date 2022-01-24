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
struct xt_multiport {int /*<<< orphan*/  count; int /*<<< orphan*/  flags; } ;
struct xt_mtchk_param {struct xt_multiport* matchinfo; struct ip6t_ip6* entryinfo; } ;
struct ip6t_ip6 {int /*<<< orphan*/  invflags; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const struct xt_mtchk_param *par)
{
	const struct ip6t_ip6 *ip = par->entryinfo;
	const struct xt_multiport *multiinfo = par->matchinfo;

	return FUNC0(ip->proto, ip->invflags, multiinfo->flags,
		     multiinfo->count);
}