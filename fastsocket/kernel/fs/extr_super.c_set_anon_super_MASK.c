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
struct super_block {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EMFILE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_ID_MASK ; 
 int MINORBITS ; 
 int MINORMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unnamed_dev_ida ; 
 int /*<<< orphan*/  unnamed_dev_lock ; 
 int unnamed_dev_start ; 

int FUNC6(struct super_block *s, void *data)
{
	int dev;
	int error;

 retry:
	if (FUNC2(&unnamed_dev_ida, GFP_ATOMIC) == 0)
		return -ENOMEM;
	FUNC4(&unnamed_dev_lock);
	error = FUNC1(&unnamed_dev_ida, unnamed_dev_start, &dev);
	if (!error)
		unnamed_dev_start = dev + 1;
	FUNC5(&unnamed_dev_lock);
	if (error == -EAGAIN)
		/* We raced and lost with another CPU. */
		goto retry;
	else if (error)
		return -EAGAIN;

	if ((dev & MAX_ID_MASK) == (1 << MINORBITS)) {
		FUNC4(&unnamed_dev_lock);
		FUNC3(&unnamed_dev_ida, dev);
		if (unnamed_dev_start > dev)
			unnamed_dev_start = dev;
		FUNC5(&unnamed_dev_lock);
		return -EMFILE;
	}
	s->s_dev = FUNC0(0, dev & MINORMASK);
	return 0;
}