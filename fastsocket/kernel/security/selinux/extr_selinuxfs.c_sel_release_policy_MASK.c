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
struct policy_load_memory {int /*<<< orphan*/  data; } ;
struct inode {int dummy; } ;
struct file {struct policy_load_memory* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct policy_load_memory*) ; 
 scalar_t__ policy_opened ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	struct policy_load_memory *plm = filp->private_data;

	FUNC0(!plm);

	policy_opened = 0;

	FUNC2(plm->data);
	FUNC1(plm);

	return 0;
}