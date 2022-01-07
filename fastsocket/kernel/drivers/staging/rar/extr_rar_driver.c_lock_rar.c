
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int low; } ;


 int ENODEV ;
 int memrar_set_rar_addr (int ,int,int) ;
 TYPE_1__* rar_addr ;
 int rar_dev ;
 scalar_t__ registered ;

int lock_rar(int rar_index)
{
 u32 working_addr;
 int result;
if (registered && (rar_index < 3) && (rar_index >= 0)) {

 working_addr=rar_addr[rar_index].low & 0xfffffff0;


        result=memrar_set_rar_addr(rar_dev,rar_index,working_addr);
 return result;
 }

else {
 return -ENODEV;
 }
}
