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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct snd_pcm_substream {TYPE_2__ self_group; TYPE_1__* group; } ;
struct action_ops {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct action_ops*,struct snd_pcm_substream*,int,int) ; 
 int FUNC3 (struct action_ops*,struct snd_pcm_substream*,int) ; 
 int /*<<< orphan*/  snd_pcm_link_rwlock ; 
 scalar_t__ FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct action_ops *ops,
				   struct snd_pcm_substream *substream,
				   int state)
{
	int res;

	FUNC0(&snd_pcm_link_rwlock);
	if (FUNC4(substream)) {
		FUNC5(&substream->group->lock);
		FUNC5(&substream->self_group.lock);
		res = FUNC2(ops, substream, state, 1);
		FUNC6(&substream->self_group.lock);
		FUNC6(&substream->group->lock);
	} else {
		FUNC5(&substream->self_group.lock);
		res = FUNC3(ops, substream, state);
		FUNC6(&substream->self_group.lock);
	}
	FUNC1(&snd_pcm_link_rwlock);
	return res;
}