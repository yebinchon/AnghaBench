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
typedef  size_t uint32_t ;
struct dlm_ls {TYPE_1__* ls_dirtbl; } ;
struct dlm_direntry {int /*<<< orphan*/  list; int /*<<< orphan*/  length; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 size_t FUNC0 (struct dlm_ls*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dlm_ls *ls, struct dlm_direntry *de)
{
	uint32_t bucket;

	bucket = FUNC0(ls, de->name, de->length);
	FUNC1(&de->list, &ls->ls_dirtbl[bucket].list);
}