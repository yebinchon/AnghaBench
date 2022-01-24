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
typedef  int u32_t ;
typedef  int u16_t ;
struct zsTkipSeed {int iv32; int* ttak; int* ta; int iv32tmp; int /*<<< orphan*/ * tk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

u8_t FUNC2(u32_t iv32, struct zsTkipSeed* pSeed)
{
    u16_t   tsc0;
    u16_t   tsc1;
    u16_t   i, j;
#if 0
    /* Need not proceed this function with the same iv32 */
    if ( iv32 == pSeed->iv32 )
    {
        return 1;
    }
#endif
    tsc0 = (u16_t) ((iv32 >> 16) & 0xffff); /* msb */
    tsc1 = (u16_t) (iv32 & 0xffff);

    /* Phase 1, step 1 */
    pSeed->ttak[0] = tsc1;
    pSeed->ttak[1] = tsc0;
    pSeed->ttak[2] = (u16_t) (pSeed->ta[0] + (pSeed->ta[1] <<8));
    pSeed->ttak[3] = (u16_t) (pSeed->ta[2] + (pSeed->ta[3] <<8));
    pSeed->ttak[4] = (u16_t) (pSeed->ta[4] + (pSeed->ta[5] <<8));

    /* Phase 1, step 2 */
    for (i=0; i<8; i++)
    {
        j = 2*(i & 1);
        pSeed->ttak[0] =(pSeed->ttak[0] + FUNC1(pSeed->ttak[4]
                         ^ FUNC0(pSeed->tk[1+j], pSeed->tk[j])))
                        & 0xffff;
        pSeed->ttak[1] =(pSeed->ttak[1] + FUNC1(pSeed->ttak[0]
                         ^ FUNC0(pSeed->tk[5+j], pSeed->tk[4+j] )))
                        & 0xffff;
        pSeed->ttak[2] =(pSeed->ttak[2] + FUNC1(pSeed->ttak[1]
                         ^ FUNC0(pSeed->tk[9+j], pSeed->tk[8+j] )))
                        & 0xffff;
        pSeed->ttak[3] =(pSeed->ttak[3] + FUNC1(pSeed->ttak[2]
                         ^ FUNC0(pSeed->tk[13+j], pSeed->tk[12+j])))
                        & 0xffff;
        pSeed->ttak[4] =(pSeed->ttak[4] + FUNC1(pSeed->ttak[3]
                         ^ FUNC0(pSeed->tk[1+j], pSeed->tk[j]  )))
                        & 0xffff;
        pSeed->ttak[4] =(pSeed->ttak[4] + i) & 0xffff;
    }

    if ( iv32 == (pSeed->iv32+1) )
    {
        pSeed->iv32tmp = iv32;
        return 1;
    }

    return 0;
}