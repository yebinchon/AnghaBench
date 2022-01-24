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
struct tfile_check {struct tfile_check* next; scalar_t__ count; } ;

/* Variables and functions */
 struct tfile_check base_tfile_check ; 
 int /*<<< orphan*/  FUNC0 (struct tfile_check*) ; 
 struct tfile_check* current_tfile_check ; 
 int /*<<< orphan*/  FUNC1 (struct tfile_check*) ; 

void FUNC2(void)
{
	struct tfile_check *tfile_check_iter, *tmp;

	tfile_check_iter = base_tfile_check.next;
	base_tfile_check.next = NULL;
	FUNC0(&base_tfile_check);
	base_tfile_check.count = 0;

	while (tfile_check_iter) {
		FUNC0(tfile_check_iter);
		tmp = tfile_check_iter;
		tfile_check_iter = tfile_check_iter->next;
		FUNC1(tmp);
	}
	current_tfile_check = &base_tfile_check;
}