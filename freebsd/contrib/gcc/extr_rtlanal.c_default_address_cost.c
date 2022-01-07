
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int MEM ;
 int rtx_cost (int ,int ) ;

int
default_address_cost (rtx x)
{
  return rtx_cost (x, MEM);
}
