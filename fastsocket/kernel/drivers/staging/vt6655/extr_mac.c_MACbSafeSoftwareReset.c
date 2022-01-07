
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int MAC_MAX_CONTEXT_SIZE_PAGE0 ;
 int MAC_MAX_CONTEXT_SIZE_PAGE1 ;
 int MACbSoftwareReset (int ) ;
 int MACvRestoreContext (int ,int *) ;
 int MACvSaveContext (int ,int *) ;

BOOL MACbSafeSoftwareReset (DWORD_PTR dwIoBase)
{
    BYTE abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0+MAC_MAX_CONTEXT_SIZE_PAGE1];
    BOOL bRetVal;






    MACvSaveContext(dwIoBase, abyTmpRegData);

    bRetVal = MACbSoftwareReset(dwIoBase);


    MACvRestoreContext(dwIoBase, abyTmpRegData);

    return bRetVal;
}
