#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct se_lun {TYPE_1__* lun_sep; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int sep_tg_pt_secondary_write_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

ssize_t FUNC1(
	struct se_lun *lun,
	char *page)
{
	return FUNC0(page, "%d\n",
			lun->lun_sep->sep_tg_pt_secondary_write_md);
}