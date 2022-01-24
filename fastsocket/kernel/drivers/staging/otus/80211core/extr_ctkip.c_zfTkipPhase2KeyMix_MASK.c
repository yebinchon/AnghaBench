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
typedef  int u8_t ;
typedef  int u16_t ;
struct zsTkipSeed {int* ppk; int* ttak; int iv16; int iv16tmp; int /*<<< orphan*/ * tk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 

u8_t FUNC3(u16_t iv16, struct zsTkipSeed* pSeed)
{
    u16_t tsc2;

    tsc2 = iv16;

    /* Phase 2, Step 1 */
    pSeed->ppk[0] = pSeed->ttak[0];
    pSeed->ppk[1] = pSeed->ttak[1];
    pSeed->ppk[2] = pSeed->ttak[2];
    pSeed->ppk[3] = pSeed->ttak[3];
    pSeed->ppk[4] = pSeed->ttak[4];
    pSeed->ppk[5] = (pSeed->ttak[4] + tsc2) & 0xffff;

    /* Phase2, Step 2 */
    pSeed->ppk[0] = pSeed->ppk[0]
                + FUNC1(pSeed->ppk[5] ^ FUNC0(pSeed->tk[1],pSeed->tk[0]));
    pSeed->ppk[1] = pSeed->ppk[1]
                + FUNC1(pSeed->ppk[0] ^ FUNC0(pSeed->tk[3],pSeed->tk[2]));
    pSeed->ppk[2] = pSeed->ppk[2]
                + FUNC1(pSeed->ppk[1] ^ FUNC0(pSeed->tk[5],pSeed->tk[4]));
    pSeed->ppk[3] = pSeed->ppk[3]
                + FUNC1(pSeed->ppk[2] ^ FUNC0(pSeed->tk[7],pSeed->tk[6]));
    pSeed->ppk[4] = pSeed->ppk[4]
                + FUNC1(pSeed->ppk[3] ^ FUNC0(pSeed->tk[9],pSeed->tk[8]));
    pSeed->ppk[5] = pSeed->ppk[5]
                + FUNC1(pSeed->ppk[4] ^ FUNC0(pSeed->tk[11],pSeed->tk[10]));

    pSeed->ppk[0] = pSeed->ppk[0]
                + FUNC2(pSeed->ppk[5] ^ FUNC0(pSeed->tk[13],pSeed->tk[12]));
    pSeed->ppk[1] = pSeed->ppk[1]
                + FUNC2(pSeed->ppk[0] ^ FUNC0(pSeed->tk[15],pSeed->tk[14]));
    pSeed->ppk[2] = pSeed->ppk[2] + FUNC2(pSeed->ppk[1]);
    pSeed->ppk[3] = pSeed->ppk[3] + FUNC2(pSeed->ppk[2]);
    pSeed->ppk[4] = pSeed->ppk[4] + FUNC2(pSeed->ppk[3]);
    pSeed->ppk[5] = pSeed->ppk[5] + FUNC2(pSeed->ppk[4]);

    if (iv16 == 0)
    {
        if (pSeed->iv16 == 0xffff)
        {
            pSeed->iv16tmp=0;
            return 1;
        }
        else
            return 0;
    }
    else if (iv16 == (pSeed->iv16+1))
    {
        pSeed->iv16tmp = iv16;
        return 1;
    }
    else
        return 0;
}