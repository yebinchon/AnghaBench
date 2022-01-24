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
struct snd_ctxt {int /*<<< orphan*/  lock; scalar_t__ opened; } ;
struct inode {int dummy; } ;
struct file {struct snd_ctxt* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct snd_ctxt *snd = file->private_data;

	FUNC0(&snd->lock);
	snd->opened = 0;
	FUNC1(&snd->lock);
	return 0;
}