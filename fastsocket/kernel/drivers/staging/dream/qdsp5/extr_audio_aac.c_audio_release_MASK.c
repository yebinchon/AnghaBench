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
struct inode {int dummy; } ;
struct file {struct audio* private_data; } ;
struct audio {int pcm_buf_count; int /*<<< orphan*/  lock; scalar_t__ pcm_feedback; int /*<<< orphan*/ * read_data; int /*<<< orphan*/  read_phys; TYPE_1__* in; int /*<<< orphan*/ * data; int /*<<< orphan*/  phys; scalar_t__ reserved; scalar_t__ opened; int /*<<< orphan*/ * audplay; } ;
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 int DMASZ ; 
 int /*<<< orphan*/  FUNC0 (struct audio*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio*) ; 
 int /*<<< orphan*/  FUNC2 (struct audio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct audio *audio = file->private_data;

	FUNC4("audio_release()\n");

	FUNC6(&audio->lock);
	FUNC0(audio);
	FUNC1(audio);
	FUNC2(audio);
	FUNC5(audio->audplay);
	audio->audplay = NULL;
	audio->opened = 0;
	audio->reserved = 0;
	FUNC3(NULL, DMASZ, audio->data, audio->phys);
	audio->data = NULL;
	if (audio->read_data != NULL) {
		FUNC3(NULL,
				  audio->in[0].size * audio->pcm_buf_count,
				  audio->read_data, audio->read_phys);
		audio->read_data = NULL;
	}
	audio->pcm_feedback = 0;
	FUNC7(&audio->lock);
	return 0;
}