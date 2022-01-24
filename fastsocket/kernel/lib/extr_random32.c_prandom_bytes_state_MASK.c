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
typedef  unsigned char u32 ;
struct rnd_state {int dummy; } ;

/* Variables and functions */
 unsigned char BITS_PER_BYTE ; 
 unsigned char FUNC0 (struct rnd_state*) ; 
 int FUNC1 (int,int) ; 

void FUNC2(struct rnd_state *state, void *buf, int bytes)
{
	unsigned char *p = buf;
	int i;

	for (i = 0; i < FUNC1(bytes, sizeof(u32)); i += sizeof(u32)) {
		u32 random = FUNC0(state);
		int j;

		for (j = 0; j < sizeof(u32); j++) {
			p[i + j] = random;
			random >>= BITS_PER_BYTE;
		}
	}
	if (i < bytes) {
		u32 random = FUNC0(state);

		for (; i < bytes; i++) {
			p[i] = random;
			random >>= BITS_PER_BYTE;
		}
	}
}