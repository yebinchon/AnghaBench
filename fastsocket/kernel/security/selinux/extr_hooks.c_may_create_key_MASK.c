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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY__CREATE ; 
 int /*<<< orphan*/  SECCLASS_KEY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

__attribute__((used)) static int FUNC2(u32 ksid,
			  struct task_struct *ctx)
{
	u32 sid = FUNC1(ctx);

	return FUNC0(sid, ksid, SECCLASS_KEY, KEY__CREATE, NULL);
}