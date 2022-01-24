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
struct t10_alua_tg_pt_gp {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct t10_alua_tg_pt_gp*,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC1(
	struct t10_alua_tg_pt_gp *tg_pt_gp,
	const char *page,
	size_t count)
{
	return FUNC0(tg_pt_gp, page, count);
}