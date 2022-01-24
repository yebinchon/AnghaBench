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
typedef  int /*<<< orphan*/  u8_t ;
struct zsMicVar {void* k1; void* k0; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zsMicVar*) ; 

void FUNC2(u8_t* key, struct zsMicVar* pMic)
{
    pMic->k0 = FUNC0(key);
    pMic->k1 = FUNC0(key+4);
    FUNC1(pMic);
}