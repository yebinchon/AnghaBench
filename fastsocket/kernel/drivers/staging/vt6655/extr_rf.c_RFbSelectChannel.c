
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;




 int RFbAL2230SelectChannel (int ,int) ;
 int TRUE ;
 int s_bAL7230SelectChannel (int ,int) ;

BOOL RFbSelectChannel (DWORD_PTR dwIoBase, BYTE byRFType, BYTE byChannel)
{
BOOL bResult = TRUE;
    switch (byRFType) {

        case 131 :
        case 129:
            bResult = RFbAL2230SelectChannel(dwIoBase, byChannel);
            break;

        case 130 :
            bResult = s_bAL7230SelectChannel(dwIoBase, byChannel);
            break;

        case 128 :
            bResult = TRUE;
            break;
        default:
            bResult = FALSE;
            break;
    }
    return bResult;
}
