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
struct type_info {int dummy; } ;
struct gcov_iterator {struct gcov_info* info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gcov_iterator* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gcov_info*) ; 

struct gcov_iterator *FUNC2(struct gcov_info *info)
{
	struct gcov_iterator *iter;

	iter = FUNC0(sizeof(struct gcov_iterator) +
		       FUNC1(info) * sizeof(struct type_info),
		       GFP_KERNEL);
	if (iter)
		iter->info = info;

	return iter;
}