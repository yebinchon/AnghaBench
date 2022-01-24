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
struct snd_pcm_hw_rule {int /*<<< orphan*/  var; int /*<<< orphan*/ * deps; scalar_t__ private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct snd_interval*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct snd_interval*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_hw_params *params,
				   struct snd_pcm_hw_rule *rule)
{
	struct snd_interval t;
	FUNC2(FUNC1(params, rule->deps[0]),
			 (unsigned long) rule->private,
			 FUNC1(params, rule->deps[1]), &t);
	return FUNC3(FUNC0(params, rule->var), &t);
}