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
struct file {int dummy; } ;
struct dir_private_info {int /*<<< orphan*/  curr_minor_hash; int /*<<< orphan*/  curr_hash; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dir_private_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dir_private_info *FUNC3(struct file *filp,
							   loff_t pos)
{
	struct dir_private_info *p;

	p = FUNC0(sizeof(struct dir_private_info), GFP_KERNEL);
	if (!p)
		return NULL;
	p->curr_hash = FUNC1(filp, pos);
	p->curr_minor_hash = FUNC2(filp, pos);
	return p;
}