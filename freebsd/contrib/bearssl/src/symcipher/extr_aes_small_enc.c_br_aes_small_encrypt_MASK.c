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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 

void
FUNC4(unsigned num_rounds, const uint32_t *skey, void *data)
{
	unsigned char *buf;
	unsigned state[16];
	unsigned u;

	buf = data;
	for (u = 0; u < 16; u ++) {
		state[u] = buf[u];
	}
	FUNC0(state, skey);
	for (u = 1; u < num_rounds; u ++) {
		FUNC3(state);
		FUNC2(state);
		FUNC1(state);
		FUNC0(state, skey + (u << 2));
	}
	FUNC3(state);
	FUNC2(state);
	FUNC0(state, skey + (num_rounds << 2));
	for (u = 0; u < 16; u ++) {
		buf[u] = state[u];
	}
}