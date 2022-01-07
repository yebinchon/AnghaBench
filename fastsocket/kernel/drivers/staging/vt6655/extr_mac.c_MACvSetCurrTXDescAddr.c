
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef int DWORD ;


 int MACvSetCurrAC0DescAddrEx (int ,int ) ;
 int MACvSetCurrTx0DescAddrEx (int ,int ) ;
 int TYPE_AC0DMA ;
 int TYPE_TXDMA0 ;

void MACvSetCurrTXDescAddr (int iTxType, DWORD_PTR dwIoBase, DWORD dwCurrDescAddr)
{
    if(iTxType == TYPE_AC0DMA){
        MACvSetCurrAC0DescAddrEx(dwIoBase, dwCurrDescAddr);
    }else if(iTxType == TYPE_TXDMA0){
        MACvSetCurrTx0DescAddrEx(dwIoBase, dwCurrDescAddr);
    }
}
