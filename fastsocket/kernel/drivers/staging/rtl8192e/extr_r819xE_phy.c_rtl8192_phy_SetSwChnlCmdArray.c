
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ msDelay; scalar_t__ Para2; scalar_t__ Para1; int CmdID; } ;
typedef int SwChnlCmdID ;
typedef TYPE_1__ SwChnlCmd ;


 int COMP_ERR ;
 int RT_TRACE (int ,char*,...) ;

__attribute__((used)) static u8 rtl8192_phy_SetSwChnlCmdArray(
 SwChnlCmd* CmdTable,
 u32 CmdTableIdx,
 u32 CmdTableSz,
 SwChnlCmdID CmdID,
 u32 Para1,
 u32 Para2,
 u32 msDelay
 )
{
 SwChnlCmd* pCmd;

 if(CmdTable == ((void*)0))
 {
  RT_TRACE(COMP_ERR, "phy_SetSwChnlCmdArray(): CmdTable cannot be NULL.\n");
  return 0;
 }
 if(CmdTableIdx >= CmdTableSz)
 {
  RT_TRACE(COMP_ERR, "phy_SetSwChnlCmdArray(): Access invalid index, please check size of the table, CmdTableIdx:%d, CmdTableSz:%d\n",
    CmdTableIdx, CmdTableSz);
  return 0;
 }

 pCmd = CmdTable + CmdTableIdx;
 pCmd->CmdID = CmdID;
 pCmd->Para1 = Para1;
 pCmd->Para2 = Para2;
 pCmd->msDelay = msDelay;

 return 1;
}
