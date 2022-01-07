
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ msDelay; scalar_t__ Para2; scalar_t__ Para1; int CmdID; } ;
typedef int SwChnlCmdID ;
typedef TYPE_1__ SwChnlCmd ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool
phy_SetSwChnlCmdArray(
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

  return FALSE;
 }
 if(CmdTableIdx >= CmdTableSz)
 {



  return FALSE;
 }

 pCmd = CmdTable + CmdTableIdx;
 pCmd->CmdID = CmdID;
 pCmd->Para1 = Para1;
 pCmd->Para2 = Para2;
 pCmd->msDelay = msDelay;

 return TRUE;
}
