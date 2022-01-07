
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hw_data {int PermanentMacAddress; scalar_t__ SurpriseRemove; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
hal_get_permanent_address(struct hw_data *pHwData, u8 * pethernet_address)
{
 if (pHwData->SurpriseRemove)
  return;

 memcpy(pethernet_address, pHwData->PermanentMacAddress, 6);
}
