
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int DWORD_PTR ;


 int ASSERT (int ) ;



 int FALSE ;
 int LOBYTE (int) ;
 int MACvSetLoopbackMode (int ,int ) ;

void CARDvSetLoopbackMode (DWORD_PTR dwIoBase, WORD wLoopbackMode)
{
    switch(wLoopbackMode) {
    case 129:
    case 130:
    case 128:
        break;
    default:
        ASSERT(FALSE);
        break;
    }

    MACvSetLoopbackMode(dwIoBase, LOBYTE(wLoopbackMode));

}
