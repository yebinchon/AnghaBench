#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; unsigned long vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; int /*<<< orphan*/ * vm_ops; TYPE_3__* vm_mm; } ;
struct user_struct {int /*<<< orphan*/  locked_vm; } ;
struct ring_buffer {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  wakeup_watermark; scalar_t__ watermark; scalar_t__ inherit; } ;
struct perf_event {int cpu; long mmap_locked; int /*<<< orphan*/  mmap_mutex; int /*<<< orphan*/  mmap_count; int /*<<< orphan*/  mmap_user; TYPE_4__* rb; TYPE_2__ attr; TYPE_1__* ctx; } ;
struct file {struct perf_event* private_data; } ;
struct TYPE_9__ {unsigned long nr_pages; int /*<<< orphan*/  refcount; } ;
struct TYPE_8__ {long locked_vm; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int RING_BUFFER_WRITABLE ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int VM_RESERVED ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (long,int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct user_struct* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct perf_event*) ; 
 int /*<<< orphan*/  perf_mmap_vmops ; 
 scalar_t__ FUNC13 () ; 
 struct ring_buffer* FUNC14 (unsigned long,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,struct ring_buffer*) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ ) ; 
 int sysctl_perf_event_mlock ; 

__attribute__((used)) static int FUNC17(struct file *file, struct vm_area_struct *vma)
{
	struct perf_event *event = file->private_data;
	unsigned long user_locked, user_lock_limit;
	struct user_struct *user = FUNC6();
	unsigned long locked, lock_limit;
	struct ring_buffer *rb;
	unsigned long vma_size;
	unsigned long nr_pages;
	long user_extra, extra;
	int ret = 0, flags = 0;

	/*
	 * Don't allow mmap() of inherited per-task counters. This would
	 * create a performance issue due to all children writing to the
	 * same rb.
	 */
	if (event->cpu == -1 && event->attr.inherit)
		return -EINVAL;

	if (!(vma->vm_flags & VM_SHARED))
		return -EINVAL;

	vma_size = vma->vm_end - vma->vm_start;
	nr_pages = (vma_size / PAGE_SIZE) - 1;

	/*
	 * If we have rb pages ensure they're a power-of-two number, so we
	 * can do bitmasks instead of modulo.
	 */
	if (nr_pages != 0 && !FUNC8(nr_pages))
		return -EINVAL;

	if (vma_size != PAGE_SIZE * (1 + nr_pages))
		return -EINVAL;

	if (vma->vm_pgoff != 0)
		return -EINVAL;

	FUNC1(event->ctx->parent_ctx);
	FUNC9(&event->mmap_mutex);
	if (event->rb) {
		if (event->rb->nr_pages == nr_pages)
			FUNC2(&event->rb->refcount);
		else
			ret = -EINVAL;
		goto unlock;
	}

	user_extra = nr_pages + 1;
	user_lock_limit = sysctl_perf_event_mlock >> (PAGE_SHIFT - 10);

	/*
	 * Increase the limit linearly with more CPUs:
	 */
	user_lock_limit *= FUNC11();

	user_locked = FUNC4(&user->locked_vm) + user_extra;

	extra = 0;
	if (user_locked > user_lock_limit)
		extra = user_locked - user_lock_limit;

	lock_limit = FUNC16(RLIMIT_MEMLOCK);
	lock_limit >>= PAGE_SHIFT;
	locked = vma->vm_mm->locked_vm + extra;

	if ((locked > lock_limit) && FUNC13() &&
		!FUNC5(CAP_IPC_LOCK)) {
		ret = -EPERM;
		goto unlock;
	}

	FUNC0(event->rb);

	if (vma->vm_flags & VM_WRITE)
		flags |= RING_BUFFER_WRITABLE;

	rb = FUNC14(nr_pages, 
		event->attr.watermark ? event->attr.wakeup_watermark : 0,
		event->cpu, flags);

	if (!rb) {
		ret = -ENOMEM;
		goto unlock;
	}
	FUNC15(event->rb, rb);

	FUNC3(user_extra, &user->locked_vm);
	event->mmap_locked = extra;
	event->mmap_user = FUNC7();
	vma->vm_mm->locked_vm += event->mmap_locked;

	FUNC12(event);

unlock:
	if (!ret)
		FUNC2(&event->mmap_count);
	FUNC10(&event->mmap_mutex);

	vma->vm_flags |= VM_RESERVED;
	vma->vm_ops = &perf_mmap_vmops;

	return ret;
}