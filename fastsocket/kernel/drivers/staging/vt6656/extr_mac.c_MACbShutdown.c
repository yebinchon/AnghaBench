
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef int BOOL ;


 int CONTROLnsRequestOutAsyn (int ,int ,int ,int ,int ,int *) ;
 int MESSAGE_TYPE_MACSHUTDOWN ;
 int TRUE ;

BOOL MACbShutdown (PSDevice pDevice)
{
    CONTROLnsRequestOutAsyn(pDevice,
                        MESSAGE_TYPE_MACSHUTDOWN,
                        0,
                        0,
                        0,
                        ((void*)0)
                        );
    return TRUE;
}
