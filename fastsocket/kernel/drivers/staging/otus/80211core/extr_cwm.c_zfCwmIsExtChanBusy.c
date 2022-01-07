
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int u16_t ;


 int ATH_CWM_EXTCH_BUSY_THRESHOLD ;
 int FALSE ;
 int TRUE ;

u16_t zfCwmIsExtChanBusy(u32_t ctlBusy, u32_t extBusy)
{
    u32_t busy;
    u32_t cycleTime, ctlClear;

    cycleTime = 1280000;

    if (cycleTime > ctlBusy) {
        ctlClear = cycleTime - ctlBusy;
    }
    else
    {
        ctlClear = 0;
    }







    if (ctlClear) {
        busy = (extBusy * 100) / ctlClear;
    } else {
        busy = 0;
    }
    if (busy > ATH_CWM_EXTCH_BUSY_THRESHOLD) {
        return TRUE;
    }

    return FALSE;
}
