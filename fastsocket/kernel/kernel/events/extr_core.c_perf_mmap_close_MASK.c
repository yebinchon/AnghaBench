#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {TYPE_1__* vm_mm; TYPE_2__* vm_file; } ;
struct user_struct {int /*<<< orphan*/  locked_vm; } ;
struct ring_buffer {int dummy; } ;
struct perf_event {int /*<<< orphan*/  mmap_mutex; struct ring_buffer* rb; scalar_t__ mmap_locked; struct user_struct* mmap_user; int /*<<< orphan*/  mmap_count; } ;
struct TYPE_4__ {struct perf_event* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  locked_vm; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct user_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct ring_buffer*) ; 

__attribute__((used)) static void FUNC8(struct vm_area_struct *vma)
{
	struct perf_event *event = vma->vm_file->private_data;

	if (FUNC0(&event->mmap_count, &event->mmap_mutex)) {
		unsigned long size = FUNC4(event->rb);
		struct user_struct *user = event->mmap_user;
		struct ring_buffer *rb = event->rb;

		FUNC1((size >> PAGE_SHIFT) + 1, &user->locked_vm);
		vma->vm_mm->locked_vm -= event->mmap_locked;
		FUNC5(event->rb, NULL);
		FUNC6(event, rb);
		FUNC3(&event->mmap_mutex);

		FUNC7(rb);
		FUNC2(user);
	}
}