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
struct go7007_file {scalar_t__ buf_count; int /*<<< orphan*/  lock; struct go7007* go; } ;
struct go7007 {scalar_t__ status; int /*<<< orphan*/  ref_count; } ;
struct file {struct go7007_file* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STATUS_ONLINE ; 
 struct go7007_file* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct go7007* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file)
{
	struct go7007 *go = FUNC3(FUNC2(file));
	struct go7007_file *gofh;

	if (go->status != STATUS_ONLINE)
		return -EBUSY;
	gofh = FUNC0(sizeof(struct go7007_file), GFP_KERNEL);
	if (gofh == NULL)
		return -ENOMEM;
	++go->ref_count;
	gofh->go = go;
	FUNC1(&gofh->lock);
	gofh->buf_count = 0;
	file->private_data = gofh;
	return 0;
}