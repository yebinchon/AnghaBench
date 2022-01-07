
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int VNSvInPortB (int,int*) ;

BOOL MACbIsRegBitsOn (DWORD_PTR dwIoBase, BYTE byRegOfs, BYTE byTestBits)
{
    BYTE byData;

    VNSvInPortB(dwIoBase + byRegOfs, &byData);
    return (byData & byTestBits) == byTestBits;
}
