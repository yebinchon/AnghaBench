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
struct snd_ratnum {unsigned int num; unsigned int den_min; unsigned int den_max; unsigned int den_step; } ;
struct snd_interval {unsigned int min; int empty; int openmin; unsigned int max; int openmax; scalar_t__ integer; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (unsigned int,unsigned int) ; 
 void* FUNC1 (unsigned int,unsigned int) ; 
 int FUNC2 (struct snd_interval*,struct snd_interval*) ; 
 scalar_t__ FUNC3 (struct snd_interval*) ; 

int FUNC4(struct snd_interval *i,
			unsigned int rats_count, struct snd_ratnum *rats,
			unsigned int *nump, unsigned int *denp)
{
	unsigned int best_num, best_den;
	int best_diff;
	unsigned int k;
	struct snd_interval t;
	int err;
	unsigned int result_num, result_den;
	int result_diff;

	best_num = best_den = best_diff = 0;
	for (k = 0; k < rats_count; ++k) {
		unsigned int num = rats[k].num;
		unsigned int den;
		unsigned int q = i->min;
		int diff;
		if (q == 0)
			q = 1;
		den = FUNC1(num, q);
		if (den < rats[k].den_min)
			continue;
		if (den > rats[k].den_max)
			den = rats[k].den_max;
		else {
			unsigned int r;
			r = (den - rats[k].den_min) % rats[k].den_step;
			if (r != 0)
				den -= r;
		}
		diff = num - q * den;
		if (diff < 0)
			diff = -diff;
		if (best_num == 0 ||
		    diff * best_den < best_diff * den) {
			best_diff = diff;
			best_den = den;
			best_num = num;
		}
	}
	if (best_den == 0) {
		i->empty = 1;
		return -EINVAL;
	}
	t.min = FUNC0(best_num, best_den);
	t.openmin = !!(best_num % best_den);
	
	result_num = best_num;
	result_diff = best_diff;
	result_den = best_den;
	best_num = best_den = best_diff = 0;
	for (k = 0; k < rats_count; ++k) {
		unsigned int num = rats[k].num;
		unsigned int den;
		unsigned int q = i->max;
		int diff;
		if (q == 0) {
			i->empty = 1;
			return -EINVAL;
		}
		den = FUNC0(num, q);
		if (den > rats[k].den_max)
			continue;
		if (den < rats[k].den_min)
			den = rats[k].den_min;
		else {
			unsigned int r;
			r = (den - rats[k].den_min) % rats[k].den_step;
			if (r != 0)
				den += rats[k].den_step - r;
		}
		diff = q * den - num;
		if (diff < 0)
			diff = -diff;
		if (best_num == 0 ||
		    diff * best_den < best_diff * den) {
			best_diff = diff;
			best_den = den;
			best_num = num;
		}
	}
	if (best_den == 0) {
		i->empty = 1;
		return -EINVAL;
	}
	t.max = FUNC1(best_num, best_den);
	t.openmax = !!(best_num % best_den);
	t.integer = 0;
	err = FUNC2(i, &t);
	if (err < 0)
		return err;

	if (FUNC3(i)) {
		if (best_diff * result_den < result_diff * best_den) {
			result_num = best_num;
			result_den = best_den;
		}
		if (nump)
			*nump = result_num;
		if (denp)
			*denp = result_den;
	}
	return err;
}