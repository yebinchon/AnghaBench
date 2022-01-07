
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PBYTE ;
typedef scalar_t__ DWORD_PTR ;


 int MAC_MAX_CONTEXT_SIZE_PAGE0 ;
 int MAC_MAX_CONTEXT_SIZE_PAGE1 ;
 int MACvSelectPage0 (scalar_t__) ;
 int MACvSelectPage1 (scalar_t__) ;
 int VNSvInPortB (scalar_t__,scalar_t__) ;

void MACvSaveContext (DWORD_PTR dwIoBase, PBYTE pbyCxtBuf)
{
    int ii;


    for (ii = 0; ii < MAC_MAX_CONTEXT_SIZE_PAGE0; ii++) {
        VNSvInPortB((dwIoBase + ii), (pbyCxtBuf + ii));
    }

    MACvSelectPage1(dwIoBase);


    for (ii = 0; ii < MAC_MAX_CONTEXT_SIZE_PAGE1; ii++) {
        VNSvInPortB((dwIoBase + ii), (pbyCxtBuf + MAC_MAX_CONTEXT_SIZE_PAGE0 + ii));
    }

    MACvSelectPage0(dwIoBase);
}
