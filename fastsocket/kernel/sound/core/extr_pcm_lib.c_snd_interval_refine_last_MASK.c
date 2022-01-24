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
struct snd_interval {int /*<<< orphan*/  min; scalar_t__ openmin; scalar_t__ openmax; int /*<<< orphan*/  max; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_interval*) ; 
 scalar_t__ FUNC2 (struct snd_interval*) ; 

__attribute__((used)) static int FUNC3(struct snd_interval *i)
{
	if (FUNC0(FUNC1(i)))
		return -EINVAL;
	if (FUNC2(i))
		return 0;
	i->min = i->max;
	i->openmin = i->openmax;
	if (i->openmin)
		i->min--;
	return 1;
}