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
struct t10_alua_tg_pt_gp {int /*<<< orphan*/  tg_pt_gp_alua_access_status; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(
	struct t10_alua_tg_pt_gp *tg_pt_gp,
	char *page)
{
	return FUNC1(page, "%s\n",
		FUNC0(tg_pt_gp->tg_pt_gp_alua_access_status));
}