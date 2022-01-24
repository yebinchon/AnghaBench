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
struct snd_pcm_substream {TYPE_1__* group; TYPE_2__ self_group; } ;
struct action_ops {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct action_ops*,struct snd_pcm_substream*,int,int) ; 
 int FUNC1 (struct action_ops*,struct snd_pcm_substream*,int) ; 
 scalar_t__ FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct action_ops *ops,
			  struct snd_pcm_substream *substream,
			  int state)
{
	int res;

	if (FUNC2(substream)) {
		if (!FUNC4(&substream->group->lock)) {
			FUNC5(&substream->self_group.lock);
			FUNC3(&substream->group->lock);
			FUNC3(&substream->self_group.lock);
		}
		res = FUNC0(ops, substream, state, 1);
		FUNC5(&substream->group->lock);
	} else {
		res = FUNC1(ops, substream, state);
	}
	return res;
}