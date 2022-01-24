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
typedef  int uint32_t ;

/* Variables and functions */
 int* Rcon ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned char const*) ; 

unsigned
FUNC2(uint32_t *skey, const void *key, size_t key_len)
{
	unsigned num_rounds;
	int i, j, k, nk, nkf;

	switch (key_len) {
	case 16:
		num_rounds = 10;
		break;
	case 24:
		num_rounds = 12;
		break;
	case 32:
		num_rounds = 14;
		break;
	default:
		/* abort(); */
		return 0;
	}
	nk = (int)(key_len >> 2);
	nkf = (int)((num_rounds + 1) << 2);
	for (i = 0; i < nk; i ++) {
		skey[i] = FUNC1((const unsigned char *)key + (i << 2));
	}
	for (i = nk, j = 0, k = 0; i < nkf; i ++) {
		uint32_t tmp;

		tmp = skey[i - 1];
		if (j == 0) {
			tmp = (tmp << 8) | (tmp >> 24);
			tmp = FUNC0(tmp) ^ Rcon[k];
		} else if (nk > 6 && j == 4) {
			tmp = FUNC0(tmp);
		}
		skey[i] = skey[i - nk] ^ tmp;
		if (++ j == nk) {
			j = 0;
			k ++;
		}
	}
	return num_rounds;
}