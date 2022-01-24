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
struct snd_gf1_mem_block {int dummy; } ;
struct snd_gf1_mem {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gf1_mem*,int) ; 
 struct snd_gf1_mem_block* FUNC1 (struct snd_gf1_mem*,unsigned int) ; 
 int FUNC2 (struct snd_gf1_mem*,struct snd_gf1_mem_block*) ; 

int FUNC3(struct snd_gf1_mem * alloc, unsigned int address)
{
	int result;
	struct snd_gf1_mem_block *block;

	FUNC0(alloc, 0);
	if ((block = FUNC1(alloc, address)) != NULL) {
		result = FUNC2(alloc, block);
		FUNC0(alloc, 1);
		return result;
	}
	FUNC0(alloc, 1);
	return -EINVAL;
}