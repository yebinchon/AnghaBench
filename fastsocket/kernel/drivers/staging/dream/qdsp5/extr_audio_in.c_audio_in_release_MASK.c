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
struct inode {int dummy; } ;
struct file {struct audio_in* private_data; } ;
struct audio_in {int /*<<< orphan*/  lock; scalar_t__ opened; int /*<<< orphan*/ * audpre; int /*<<< orphan*/ * audrec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio_in*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_in*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct audio_in *audio = file->private_data;

	FUNC3(&audio->lock);
	FUNC1(audio);
	FUNC0(audio);
	FUNC2(audio->audrec);
	FUNC2(audio->audpre);
	audio->audrec = NULL;
	audio->audpre = NULL;
	audio->opened = 0;
	FUNC4(&audio->lock);
	return 0;
}