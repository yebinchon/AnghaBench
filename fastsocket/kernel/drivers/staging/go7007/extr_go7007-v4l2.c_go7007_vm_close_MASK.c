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
struct vm_area_struct {struct go7007_buffer* vm_private_data; } ;
struct go7007_buffer {scalar_t__ mapped; TYPE_1__* go; } ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct go7007_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct vm_area_struct *vma)
{
	struct go7007_buffer *gobuf = vma->vm_private_data;
	unsigned long flags;

	if (--gobuf->mapped == 0) {
		FUNC1(&gobuf->go->spinlock, flags);
		FUNC0(gobuf);
		FUNC2(&gobuf->go->spinlock, flags);
	}
}