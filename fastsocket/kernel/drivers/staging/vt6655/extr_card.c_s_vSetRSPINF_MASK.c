#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {scalar_t__ PortOffset; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PSDevice ;
typedef  int /*<<< orphan*/  CARD_PHY_TYPE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
VOID
FUNC9 (PSDevice pDevice, CARD_PHY_TYPE ePHYType, PVOID pvSupportRateIEs, PVOID pvExtSupportRateIEs)
{
    BYTE  byServ = 0, bySignal = 0; // For CCK
    WORD  wLen = 0;
    BYTE  byTxRate = 0, byRsvTime = 0;    // For OFDM

    //Set to Page1
    FUNC2(pDevice->PortOffset);

    //RSPINF_b_1
    FUNC0(pDevice,
                         14,
                         FUNC7(RATE_1M, pvSupportRateIEs, pvExtSupportRateIEs),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    FUNC5(pDevice->PortOffset + MAC_REG_RSPINF_B_1, FUNC3(wLen,FUNC4(bySignal,byServ)));
    ///RSPINF_b_2
    FUNC0(pDevice,
                         14,
                         FUNC7(RATE_2M, pvSupportRateIEs, pvExtSupportRateIEs),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    FUNC5(pDevice->PortOffset + MAC_REG_RSPINF_B_2, FUNC3(wLen,FUNC4(bySignal,byServ)));
    //RSPINF_b_5
    FUNC0(pDevice,
                         14,
                         FUNC7(RATE_5M, pvSupportRateIEs, pvExtSupportRateIEs),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    FUNC5(pDevice->PortOffset + MAC_REG_RSPINF_B_5, FUNC3(wLen,FUNC4(bySignal,byServ)));
    //RSPINF_b_11
    FUNC0(pDevice,
                         14,
                         FUNC7(RATE_11M, pvSupportRateIEs, pvExtSupportRateIEs),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    FUNC5(pDevice->PortOffset + MAC_REG_RSPINF_B_11, FUNC3(wLen,FUNC4(bySignal,byServ)));
    //RSPINF_a_6
    FUNC8(RATE_6M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_6, FUNC4(byTxRate,byRsvTime));
    //RSPINF_a_9
    FUNC8(RATE_9M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_9, FUNC4(byTxRate,byRsvTime));
    //RSPINF_a_12
    FUNC8(RATE_12M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_12, FUNC4(byTxRate,byRsvTime));
    //RSPINF_a_18
    FUNC8(RATE_18M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_18, FUNC4(byTxRate,byRsvTime));
    //RSPINF_a_24
    FUNC8(RATE_24M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_24, FUNC4(byTxRate,byRsvTime));
    //RSPINF_a_36
    FUNC8(
                              FUNC7(RATE_36M, pvSupportRateIEs, pvExtSupportRateIEs),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_36, FUNC4(byTxRate,byRsvTime));
    //RSPINF_a_48
    FUNC8(
                              FUNC7(RATE_48M, pvSupportRateIEs, pvExtSupportRateIEs),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_48, FUNC4(byTxRate,byRsvTime));
    //RSPINF_a_54
    FUNC8(
                              FUNC7(RATE_54M, pvSupportRateIEs, pvExtSupportRateIEs),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_54, FUNC4(byTxRate,byRsvTime));
    //RSPINF_a_72
    FUNC6(pDevice->PortOffset + MAC_REG_RSPINF_A_72, FUNC4(byTxRate,byRsvTime));
    //Set to Page0
    FUNC1(pDevice->PortOffset);
}