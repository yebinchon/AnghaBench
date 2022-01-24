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
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  RF_AIROHA 131 
#define  RF_AIROHA7230 130 
#define  RF_AL2230S 129 
#define  RF_NOTHING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

BOOL FUNC2 (DWORD_PTR dwIoBase, BYTE byRFType, BYTE byChannel)
{
BOOL    bResult = TRUE;
    switch (byRFType) {

        case RF_AIROHA :
        case RF_AL2230S:
            bResult = FUNC0(dwIoBase, byChannel);
            break;
        //{{ RobertYu: 20050104
        case RF_AIROHA7230 :
            bResult = FUNC1(dwIoBase, byChannel);
            break;
        //}} RobertYu
        case RF_NOTHING :
            bResult = TRUE;
            break;
        default:
            bResult = FALSE;
            break;
    }
    return bResult;
}