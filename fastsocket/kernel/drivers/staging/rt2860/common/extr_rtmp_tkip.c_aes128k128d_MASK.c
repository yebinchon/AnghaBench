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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,unsigned char*) ; 

void FUNC5(unsigned char *key, unsigned char *data, unsigned char *ciphertext)
{
	int round;
	int i;
	unsigned char intermediatea[16];
	unsigned char intermediateb[16];
	unsigned char round_key[16];

	for(i=0; i<16; i++) round_key[i] = key[i];

	for (round = 0; round < 11; round++)
	{
		if (round == 0)
		{
			FUNC4(round_key, data, ciphertext);
			FUNC2(round_key, round);
		}
		else if (round == 10)
		{
			FUNC0(ciphertext, intermediatea);
			FUNC3(intermediatea, intermediateb);
			FUNC4(intermediateb, round_key, ciphertext);
		}
		else    /* 1 - 9 */
		{
			FUNC0(ciphertext, intermediatea);
			FUNC3(intermediatea, intermediateb);
			FUNC1(&intermediateb[0], &intermediatea[0]);
			FUNC1(&intermediateb[4], &intermediatea[4]);
			FUNC1(&intermediateb[8], &intermediatea[8]);
			FUNC1(&intermediateb[12], &intermediatea[12]);
			FUNC4(intermediatea, round_key, ciphertext);
			FUNC2(round_key, round);
		}
	}

}