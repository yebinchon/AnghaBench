
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef int BOOL ;


 int FALSE ;
 int MAC_LB_INTERNAL ;
 int MAC_LB_NONE ;
 int MACbSafeStop (int ) ;
 int MACvIntDisable (int ) ;
 int MACvSetLoopbackMode (int ,int ) ;
 int TRUE ;

BOOL MACbShutdown (DWORD_PTR dwIoBase)
{

    MACvIntDisable(dwIoBase);
    MACvSetLoopbackMode(dwIoBase, MAC_LB_INTERNAL);

    if (!MACbSafeStop(dwIoBase)) {
        MACvSetLoopbackMode(dwIoBase, MAC_LB_NONE);
        return FALSE;
    }
    MACvSetLoopbackMode(dwIoBase, MAC_LB_NONE);
    return TRUE;
}
