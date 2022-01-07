
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
struct TYPE_4__ {scalar_t__ PortOffset; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int CARD_PHY_TYPE ;
typedef int BYTE ;


 int BBvCaculateParameter (TYPE_1__*,int,int ,int ,int *,int *,int *) ;
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
 int MACvSelectPage0 (scalar_t__) ;
 int MACvSelectPage1 (scalar_t__) ;
 int MAKEDWORD (int ,int ) ;
 int MAKEWORD (int ,int ) ;
 int PK_TYPE_11B ;
 int RATE_11M ;
 int RATE_12M ;
 int RATE_18M ;
 int RATE_1M ;
 int RATE_24M ;
 int RATE_2M ;
 int RATE_36M ;
 int RATE_48M ;
 int RATE_54M ;
 int RATE_5M ;
 int RATE_6M ;
 int RATE_9M ;
 int VNSvOutPortD (scalar_t__,int ) ;
 int VNSvOutPortW (scalar_t__,int ) ;
 int VNTWIFIbyGetACKTxRate (int ,int ,int ) ;
 int s_vCaculateOFDMRParameter (int ,int ,int *,int *) ;

__attribute__((used)) static
VOID
s_vSetRSPINF (PSDevice pDevice, CARD_PHY_TYPE ePHYType, PVOID pvSupportRateIEs, PVOID pvExtSupportRateIEs)
{
    BYTE byServ = 0, bySignal = 0;
    WORD wLen = 0;
    BYTE byTxRate = 0, byRsvTime = 0;


    MACvSelectPage1(pDevice->PortOffset);


    BBvCaculateParameter(pDevice,
                         14,
                         VNTWIFIbyGetACKTxRate(RATE_1M, pvSupportRateIEs, pvExtSupportRateIEs),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    VNSvOutPortD(pDevice->PortOffset + MAC_REG_RSPINF_B_1, MAKEDWORD(wLen,MAKEWORD(bySignal,byServ)));

    BBvCaculateParameter(pDevice,
                         14,
                         VNTWIFIbyGetACKTxRate(RATE_2M, pvSupportRateIEs, pvExtSupportRateIEs),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    VNSvOutPortD(pDevice->PortOffset + MAC_REG_RSPINF_B_2, MAKEDWORD(wLen,MAKEWORD(bySignal,byServ)));

    BBvCaculateParameter(pDevice,
                         14,
                         VNTWIFIbyGetACKTxRate(RATE_5M, pvSupportRateIEs, pvExtSupportRateIEs),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    VNSvOutPortD(pDevice->PortOffset + MAC_REG_RSPINF_B_5, MAKEDWORD(wLen,MAKEWORD(bySignal,byServ)));

    BBvCaculateParameter(pDevice,
                         14,
                         VNTWIFIbyGetACKTxRate(RATE_11M, pvSupportRateIEs, pvExtSupportRateIEs),
                         PK_TYPE_11B,
                         &wLen,
                         &byServ,
                         &bySignal
    );

    VNSvOutPortD(pDevice->PortOffset + MAC_REG_RSPINF_B_11, MAKEDWORD(wLen,MAKEWORD(bySignal,byServ)));

    s_vCaculateOFDMRParameter(RATE_6M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_6, MAKEWORD(byTxRate,byRsvTime));

    s_vCaculateOFDMRParameter(RATE_9M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_9, MAKEWORD(byTxRate,byRsvTime));

    s_vCaculateOFDMRParameter(RATE_12M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_12, MAKEWORD(byTxRate,byRsvTime));

    s_vCaculateOFDMRParameter(RATE_18M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_18, MAKEWORD(byTxRate,byRsvTime));

    s_vCaculateOFDMRParameter(RATE_24M,
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_24, MAKEWORD(byTxRate,byRsvTime));

    s_vCaculateOFDMRParameter(
                              VNTWIFIbyGetACKTxRate(RATE_36M, pvSupportRateIEs, pvExtSupportRateIEs),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_36, MAKEWORD(byTxRate,byRsvTime));

    s_vCaculateOFDMRParameter(
                              VNTWIFIbyGetACKTxRate(RATE_48M, pvSupportRateIEs, pvExtSupportRateIEs),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_48, MAKEWORD(byTxRate,byRsvTime));

    s_vCaculateOFDMRParameter(
                              VNTWIFIbyGetACKTxRate(RATE_54M, pvSupportRateIEs, pvExtSupportRateIEs),
                              ePHYType,
                              &byTxRate,
                              &byRsvTime);
    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_54, MAKEWORD(byTxRate,byRsvTime));

    VNSvOutPortW(pDevice->PortOffset + MAC_REG_RSPINF_A_72, MAKEWORD(byTxRate,byRsvTime));

    MACvSelectPage0(pDevice->PortOffset);
}
