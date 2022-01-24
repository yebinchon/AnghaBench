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
struct snd_mixer_oss_file {TYPE_1__* card; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_mixer_oss_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct snd_mixer_oss_file *fmixer;

	if (file->private_data) {
		fmixer = (struct snd_mixer_oss_file *) file->private_data;
		FUNC1(fmixer->card->module);
		FUNC2(fmixer->card, file);
		FUNC0(fmixer);
	}
	return 0;
}