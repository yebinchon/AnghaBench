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
struct snd_interval {int openmin; int openmax; scalar_t__ integer; void* max; void* min; scalar_t__ empty; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_interval*) ; 

void FUNC2(const struct snd_interval *a, const struct snd_interval *b,
		      unsigned int k, struct snd_interval *c)
{
	unsigned int r;
	if (a->empty || b->empty) {
		FUNC1(c);
		return;
	}
	c->empty = 0;
	c->min = FUNC0(a->min, b->min, k, &r);
	c->openmin = (r || a->openmin || b->openmin);
	c->max = FUNC0(a->max, b->max, k, &r);
	if (r) {
		c->max++;
		c->openmax = 1;
	} else
		c->openmax = (a->openmax || b->openmax);
	c->integer = 0;
}