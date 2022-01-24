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
 unsigned int FUNC0 (int*,void const*,size_t) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 

unsigned
FUNC5(uint32_t *skey, const void *key, size_t key_len)
{
	unsigned num_rounds;
	int i, m;

	/*
	 * Sub-keys for decryption are distinct from encryption sub-keys
	 * in that InvMixColumns() is already applied for the inner
	 * rounds.
	 */
	num_rounds = FUNC0(skey, key, key_len);
	m = (int)(num_rounds << 2);
	for (i = 4; i < m; i ++) {
		uint32_t p;
		unsigned p0, p1, p2, p3;
		uint32_t q0, q1, q2, q3;

		p = skey[i];
		p0 = p >> 24;
		p1 = (p >> 16) & 0xFF;
		p2 = (p >> 8) & 0xFF;
		p3 = p & 0xFF;
		q0 = FUNC4(p0) ^ FUNC2(p1) ^ FUNC3(p2) ^ FUNC1(p3);
		q1 = FUNC1(p0) ^ FUNC4(p1) ^ FUNC2(p2) ^ FUNC3(p3);
		q2 = FUNC3(p0) ^ FUNC1(p1) ^ FUNC4(p2) ^ FUNC2(p3);
		q3 = FUNC2(p0) ^ FUNC3(p1) ^ FUNC1(p2) ^ FUNC4(p3);
		skey[i] = (q0 << 24) | (q1 << 16) | (q2 << 8) | q3;
	}
	return num_rounds;
}