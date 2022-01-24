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
struct rcom_config {void* rf_lsflags; void* rf_lvblen; } ;
struct dlm_ls {int /*<<< orphan*/  ls_exflags; int /*<<< orphan*/  ls_lvblen; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dlm_ls *ls, struct rcom_config *rf)
{
	rf->rf_lvblen = FUNC0(ls->ls_lvblen);
	rf->rf_lsflags = FUNC0(ls->ls_exflags);
}