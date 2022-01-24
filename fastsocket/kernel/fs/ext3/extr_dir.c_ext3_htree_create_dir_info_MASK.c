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
struct dir_private_info {int /*<<< orphan*/  curr_minor_hash; int /*<<< orphan*/  curr_hash; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dir_private_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dir_private_info *FUNC3(loff_t pos)
{
	struct dir_private_info *p;

	p = FUNC0(sizeof(struct dir_private_info), GFP_KERNEL);
	if (!p)
		return NULL;
	p->curr_hash = FUNC1(pos);
	p->curr_minor_hash = FUNC2(pos);
	return p;
}