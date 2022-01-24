#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
typedef  int UCHAR ;
struct TYPE_3__ {int* LenInBitCount; int* Input; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ SHA_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

UCHAR FUNC4(SHA_CTX *pCtx, UCHAR *pData, UINT32 LenInBytes)
{
    UINT32 TfTimes;
    UINT32 temp1,temp2;
	unsigned int i;
	UCHAR err=1;

    temp1 = pCtx->LenInBitCount[0];
    temp2 = pCtx->LenInBitCount[1];

    pCtx->LenInBitCount[0] = (UINT32) (pCtx->LenInBitCount[0] + (LenInBytes << 3));
    if (pCtx->LenInBitCount[0] < temp1)
        pCtx->LenInBitCount[1]++;   //carry in


    pCtx->LenInBitCount[1] = (UINT32) (pCtx->LenInBitCount[1] +(LenInBytes >> 29));
    if (pCtx->LenInBitCount[1] < temp2)
        return (err);   //check total length of original data


    // mod 64 bytes
    temp1 = (temp1 >> 3) & 0x3f;

    // process lacks of 64-byte data
    if (temp1)
    {
        UCHAR *pAds = (UCHAR *) pCtx->Input + temp1;

        if ((temp1+LenInBytes) < 64)
        {
            FUNC0(pAds, (UCHAR *)pData, LenInBytes);
            return (0);
        }

        FUNC0(pAds, (UCHAR *)pData, 64-temp1);
        FUNC3((UCHAR *)pCtx->Input, 16);

        FUNC1((UCHAR *)pCtx->Input + 64, 16);
        FUNC2(pCtx->Buf, (UINT32 *)pCtx->Input);

        pData += 64-temp1;
        LenInBytes -= 64-temp1;
    } // end of if (temp1)


    TfTimes = (LenInBytes >> 6);

    for (i=TfTimes; i>0; i--)
    {
        FUNC0(pCtx->Input, (UCHAR *)pData, 64);
        FUNC3((UCHAR *)pCtx->Input, 16);

        FUNC1((UCHAR *)pCtx->Input + 64, 16);
        FUNC2(pCtx->Buf, (UINT32 *)pCtx->Input);
        pData += 64;
        LenInBytes -= 64;
    } // end of for

    // buffering lacks of 64-byte data
    if(LenInBytes)
        FUNC0(pCtx->Input, (UCHAR *)pData, LenInBytes);

	return (0);

}