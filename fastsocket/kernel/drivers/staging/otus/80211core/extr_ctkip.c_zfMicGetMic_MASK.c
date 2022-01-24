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
struct zsMicVar {scalar_t__ nBytes; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct zsMicVar*) ; 
 int /*<<< orphan*/  FUNC1 (struct zsMicVar*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(u8_t* dst, struct zsMicVar* pMic)
{
    // Append the minimum padding
    FUNC0(0x5a, pMic);
    FUNC0(0, pMic);
    FUNC0(0, pMic);
    FUNC0(0, pMic);
    FUNC0(0, pMic);

    // and then zeroes until the length is a multiple of 4
    while( pMic->nBytes != 0 )
    {
        FUNC0(0, pMic);
    }

    // The appendByte function has already computed the result.
    FUNC2(dst, pMic->left);
    FUNC2(dst+4, pMic->right);

    // Reset to the empty message.
    FUNC1(pMic);

}