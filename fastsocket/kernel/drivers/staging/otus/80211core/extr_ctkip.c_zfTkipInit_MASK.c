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
typedef  void* u32_t ;
typedef  int u16_t ;
struct zsTkipSeed {int iv16; void* iv32; int /*<<< orphan*/  tk; int /*<<< orphan*/  ta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct zsTkipSeed*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 

void FUNC3(u8_t* key, u8_t* ta, struct zsTkipSeed* pSeed, u8_t* initIv)
{
    u16_t  iv16;
    u32_t  iv32;
    u16_t  i;

    /* clear memory */
    FUNC2((u8_t*) pSeed, sizeof(struct zsTkipSeed));
    /* set key to seed */
    FUNC0(pSeed->ta, ta, 6);
    FUNC0(pSeed->tk, key, 16);

    iv16 = *initIv++;
    iv16 += *initIv<<8;
    initIv++;

    iv32=0;

    for(i=0; i<4; i++)      // initiv is little endian
    {
        iv32 += *initIv<<(i*8);
        *initIv++;
    }

    pSeed->iv32 = iv32+1; // Force Recalculating on Tkip Phase1
    FUNC1(iv32, pSeed);

    pSeed->iv16 = iv16;
    pSeed->iv32 = iv32;
}