#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_3__* group; int /*<<< orphan*/  link_list; TYPE_2__* runtime; } ;
struct snd_pcm_group {int dummy; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct file {struct snd_pcm_file* private_data; } ;
struct TYPE_6__ {int count; int /*<<< orphan*/  substreams; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__* status; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int EALREADY ; 
 int EBADFD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SNDRV_PCM_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 TYPE_3__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct file* FUNC5 (int) ; 
 int /*<<< orphan*/  snd_pcm_link_rwlock ; 
 int /*<<< orphan*/  snd_pcm_link_rwsem ; 
 scalar_t__ FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream, int fd)
{
	int res = 0;
	struct file *file;
	struct snd_pcm_file *pcm_file;
	struct snd_pcm_substream *substream1;

	file = FUNC5(fd);
	if (!file)
		return -EBADFD;
	pcm_file = file->private_data;
	substream1 = pcm_file->substream;
	FUNC1(&snd_pcm_link_rwsem);
	FUNC9(&snd_pcm_link_rwlock);
	if (substream->runtime->status->state == SNDRV_PCM_STATE_OPEN ||
	    substream->runtime->status->state != substream1->runtime->status->state) {
		res = -EBADFD;
		goto _end;
	}
	if (FUNC6(substream1)) {
		res = -EALREADY;
		goto _end;
	}
	if (!FUNC6(substream)) {
		substream->group = FUNC3(sizeof(struct snd_pcm_group), GFP_ATOMIC);
		if (substream->group == NULL) {
			res = -ENOMEM;
			goto _end;
		}
		FUNC7(&substream->group->lock);
		FUNC0(&substream->group->substreams);
		FUNC4(&substream->link_list, &substream->group->substreams);
		substream->group->count = 1;
	}
	FUNC4(&substream1->link_list, &substream->group->substreams);
	substream->group->count++;
	substream1->group = substream->group;
 _end:
	FUNC10(&snd_pcm_link_rwlock);
	FUNC8(&snd_pcm_link_rwsem);
	FUNC2(file);
	return res;
}