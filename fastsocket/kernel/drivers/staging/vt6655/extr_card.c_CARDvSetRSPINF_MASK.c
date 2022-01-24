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
typedef  int WORD ;
struct TYPE_3__ {scalar_t__ PortOffset; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PSDevice ;
typedef  int /*<<< orphan*/  CARD_PHY_TYPE ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MAC_REG_RSPINF_A_12 ; 
 scalar_t__ MAC_REG_RSPINF_A_18 ; 
 scalar_t__ MAC_REG_RSPINF_A_24 ; 
 scalar_t__ MAC_REG_RSPINF_A_36 ; 
 scalar_t__ MAC_REG_RSPINF_A_48 ; 
 scalar_t__ MAC_REG_RSPINF_A_54 ; 
 scalar_t__ MAC_REG_RSPINF_A_6 ; 
 scalar_t__ MAC_REG_RSPINF_A_72 ; 
 scalar_t__ MAC_REG_RSPINF_A_9 ; 
 scalar_t__ MAC_REG_RSPINF_B_1 ; 
 scalar_t__ MAC_REG_RSPINF_B_11 ; 
 scalar_t__ MAC_REG_RSPINF_B_2 ; 
 scalar_t__ MAC_REG_RSPINF_B_5 ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  PK_TYPE_11B ; 
 int /*<<< orphan*/  RATE_11M ; 
 int /*<<< orphan*/  RATE_12M ; 
 int /*<<< orphan*/  RATE_18M ; 
 int /*<<< orphan*/  RATE_1M ; 
 int /*<<< orphan*/  RATE_24M ; 
 int /*<<< orphan*/  RATE_2M ; 
 int /*<<< orphan*/  RATE_36M ; 
 int /*<<< orphan*/  RATE_48M ; 
 int /*<<< orphan*/  RATE_54M ; 
 int /*<<< orphan*/  RATE_5M ; 
 int /*<<< orphan*/  RATE_6M ; 
 int /*<<< orphan*/  RATE_9M ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

void FUNC10 (PVOID pDeviceHandler, CARD_PHY_TYPE ePHYType)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    BYTE  byServ = 0x00, bySignal = 0x00; //For CCK
    WORD  wLen = 0x0000;
    BYTE  byTxRate, byRsvTime;             //For OFDM

    //Set to Page1
    FUNC4(pDevice->PortOffset);

    //RSPINF_b_1
    FUNC0(pDevice,
                         14,
                         FUNC1((PVOID)pDevice, RATE_1M),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    FUNC7(pDevice->PortOffset + MAC_REG_RSPINF_B_1, FUNC5(wLen,FUNC6(bySignal,byServ)));
    ///RSPINF_b_2
    FUNC0(pDevice,
                         14,
                         FUNC1((PVOID)pDevice, RATE_2M),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    FUNC7(pDevice->PortOffset + MAC_REG_RSPINF_B_2, FUNC5(wLen,FUNC6(bySignal,byServ)));
    //RSPINF_b_5
    FUNC0(pDevice,
                         14,
                         FUNC1((PVOID)pDevice, RATE_5M),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    FUNC7(pDevice->PortOffset + MAC_REG_RSPINF_B_5, FUNC5(wLen,FUNC6(bySignal,byServ)));
    //RSPINF_b_11
    FUNC0(pDevice,
                         14,
                         FUNC1((PVOID)pDevice, RATE_11M),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    FUNC7(pDevice->PortOffset + MAC_REG_RSPINF_B_11, FUNC5(wLen,FUNC6(bySignal,byServ)));
    //RSPINF_a_6
    FUNC9(RATE_6M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_6, FUNC6(byTxRate,byRsvTime));
    //RSPINF_a_9
    FUNC9(RATE_9M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_9, FUNC6(byTxRate,byRsvTime));
    //RSPINF_a_12
    FUNC9(RATE_12M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_12, FUNC6(byTxRate,byRsvTime));
    //RSPINF_a_18
    FUNC9(RATE_18M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
   FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_18, FUNC6(byTxRate,byRsvTime));
    //RSPINF_a_24
    FUNC9(RATE_24M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_24, FUNC6(byTxRate,byRsvTime));
    //RSPINF_a_36
    FUNC9(FUNC2((PVOID)pDevice, RATE_36M),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_36, FUNC6(byTxRate,byRsvTime));
    //RSPINF_a_48
    FUNC9(FUNC2((PVOID)pDevice, RATE_48M),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_48, FUNC6(byTxRate,byRsvTime));
    //RSPINF_a_54
    FUNC9(FUNC2((PVOID)pDevice, RATE_54M),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_54, FUNC6(byTxRate,byRsvTime));

    //RSPINF_a_72
    FUNC9(FUNC2((PVOID)pDevice, RATE_54M),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC8(pDevice->PortOffset + MAC_REG_RSPINF_A_72, FUNC6(byTxRate,byRsvTime));
    //Set to Page0
    FUNC3(pDevice->PortOffset);
}