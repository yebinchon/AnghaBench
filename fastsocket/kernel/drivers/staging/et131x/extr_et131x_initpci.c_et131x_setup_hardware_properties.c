
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {int* PermanentAddress; int* CurrentAddress; } ;


 int ETH_ALEN ;
 int get_random_bytes (int*,int) ;
 int memcpy (int*,int*,int ) ;

void et131x_setup_hardware_properties(struct et131x_adapter *adapter)
{




 if (adapter->PermanentAddress[0] == 0x00 &&
     adapter->PermanentAddress[1] == 0x00 &&
     adapter->PermanentAddress[2] == 0x00 &&
     adapter->PermanentAddress[3] == 0x00 &&
     adapter->PermanentAddress[4] == 0x00 &&
     adapter->PermanentAddress[5] == 0x00) {





  get_random_bytes(&adapter->CurrentAddress[5], 1);





  memcpy(adapter->PermanentAddress,
   adapter->CurrentAddress, ETH_ALEN);
 } else {




  memcpy(adapter->CurrentAddress,
         adapter->PermanentAddress, ETH_ALEN);
 }
}
