
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RAR_address_struct {int low; int high; } ;


 int ENODEV ;
 struct RAR_address_struct* rar_addr ;
 scalar_t__ registered ;

int get_rar_address(int rar_index,struct RAR_address_struct *addresses)
{
 if (registered && (rar_index < 3) && (rar_index >= 0)) {
  *addresses=rar_addr[rar_index];

  addresses->low = addresses->low & 0xfffffff0;
  addresses->high = addresses->high & 0xfffffff0;
  return 0;
  }

 else {
  return -ENODEV;
  }
}
