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
typedef  int WORD ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PSDevice ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  MAC_REG_RSPINF_B_1 ; 
 int /*<<< orphan*/  MESSAGE_REQUEST_MACREG ; 
 int /*<<< orphan*/  MESSAGE_TYPE_WRITE ; 
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (PVOID pDeviceHandler, BYTE byBBType)
{
    PSDevice    pDevice = (PSDevice) pDeviceHandler;
    BYTE    abyServ[4] = {0,0,0,0};             // For CCK
    BYTE    abySignal[4] = {0,0,0,0};
    WORD    awLen[4] = {0,0,0,0};
    BYTE    abyTxRate[9] = {0,0,0,0,0,0,0,0,0}; // For OFDM
    BYTE    abyRsvTime[9] = {0,0,0,0,0,0,0,0,0};
    BYTE    abyData[34];
    int     i;

    //RSPINF_b_1
    FUNC0(pDevice,
                         14,
                         FUNC3(pDevice, RATE_1M),
                         PK_TYPE_11B,
                         &awLen[0],
                         &abyServ[0],
                         &abySignal[0]
    );

    ///RSPINF_b_2
    FUNC0(pDevice,
                         14,
                         FUNC3(pDevice, RATE_2M),
                         PK_TYPE_11B,
                         &awLen[1],
                         &abyServ[1],
                         &abySignal[1]
    );

    //RSPINF_b_5
    FUNC0(pDevice,
                         14,
                         FUNC3(pDevice, RATE_5M),
                         PK_TYPE_11B,
                         &awLen[2],
                         &abyServ[2],
                         &abySignal[2]
    );

    //RSPINF_b_11
    FUNC0(pDevice,
                         14,
                         FUNC3(pDevice, RATE_11M),
                         PK_TYPE_11B,
                         &awLen[3],
                         &abyServ[3],
                         &abySignal[3]
    );

    //RSPINF_a_6
    FUNC1 (RATE_6M,
                                 byBBType,
                                 &abyTxRate[0],
                                 &abyRsvTime[0]);

    //RSPINF_a_9
    FUNC1 (RATE_9M,
                                 byBBType,
                                 &abyTxRate[1],
                                 &abyRsvTime[1]);

    //RSPINF_a_12
    FUNC1 (RATE_12M,
                                 byBBType,
                                 &abyTxRate[2],
                                 &abyRsvTime[2]);

    //RSPINF_a_18
    FUNC1 (RATE_18M,
                                 byBBType,
                                 &abyTxRate[3],
                                 &abyRsvTime[3]);

    //RSPINF_a_24
    FUNC1 (RATE_24M,
                                 byBBType,
                                 &abyTxRate[4],
                                 &abyRsvTime[4]);

    //RSPINF_a_36
    FUNC1 (FUNC4(pDevice, RATE_36M),
                                 byBBType,
                                 &abyTxRate[5],
                                 &abyRsvTime[5]);

    //RSPINF_a_48
    FUNC1 (FUNC4(pDevice, RATE_48M),
                                 byBBType,
                                 &abyTxRate[6],
                                 &abyRsvTime[6]);

    //RSPINF_a_54
    FUNC1 (FUNC4(pDevice, RATE_54M),
                                 byBBType,
                                 &abyTxRate[7],
                                 &abyRsvTime[7]);

    //RSPINF_a_72
    FUNC1 (FUNC4(pDevice, RATE_54M),
                                 byBBType,
                                 &abyTxRate[8],
                                 &abyRsvTime[8]);

    abyData[0] = (BYTE)(awLen[0]&0xFF);
    abyData[1] = (BYTE)(awLen[0]>>8);
    abyData[2] = abySignal[0];
    abyData[3] = abyServ[0];

    abyData[4] = (BYTE)(awLen[1]&0xFF);
    abyData[5] = (BYTE)(awLen[1]>>8);
    abyData[6] = abySignal[1];
    abyData[7] = abyServ[1];

    abyData[8] = (BYTE)(awLen[2]&0xFF);
    abyData[9] = (BYTE)(awLen[2]>>8);
    abyData[10] = abySignal[2];
    abyData[11] = abyServ[2];

    abyData[12] = (BYTE)(awLen[3]&0xFF);
    abyData[13] = (BYTE)(awLen[3]>>8);
    abyData[14] = abySignal[3];
    abyData[15] = abyServ[3];

    for(i=0;i<9;i++) {
        abyData[16+i*2] = abyTxRate[i];
        abyData[16+i*2+1] = abyRsvTime[i];
    }


    FUNC2(pDevice,
                        MESSAGE_TYPE_WRITE,
                        MAC_REG_RSPINF_B_1,
                        MESSAGE_REQUEST_MACREG,
                        34,
                        &abyData[0]);

}