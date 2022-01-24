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
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(BYTE *key, BYTE *data, BYTE *ciphertext)
{
int  i;
int  round;
BYTE TmpdataA[16];
BYTE TmpdataB[16];
BYTE abyRoundKey[16];

    for(i=0; i<16; i++)
        abyRoundKey[i] = key[i];

    for (round = 0; round < 11; round++)
    {
        if (round == 0)
        {
            FUNC4(abyRoundKey, data, ciphertext);
            FUNC0(abyRoundKey, round);
        }
        else if (round == 10)
        {
            FUNC3(ciphertext, TmpdataA);
            FUNC2(TmpdataA, TmpdataB);
            FUNC4(TmpdataB, abyRoundKey, ciphertext);
        }
        else // round 1 ~ 9
        {
            FUNC3(ciphertext, TmpdataA);
            FUNC2(TmpdataA, TmpdataB);
            FUNC1(&TmpdataB[0], &TmpdataA[0]);
            FUNC1(&TmpdataB[4], &TmpdataA[4]);
            FUNC1(&TmpdataB[8], &TmpdataA[8]);
            FUNC1(&TmpdataB[12], &TmpdataA[12]);
            FUNC4(TmpdataA, abyRoundKey, ciphertext);
            FUNC0(abyRoundKey, round);
        }
    }

}