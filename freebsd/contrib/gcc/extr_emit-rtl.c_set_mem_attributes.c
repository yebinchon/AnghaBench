
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int set_mem_attributes_minus_bitpos (int ,int ,int,int ) ;

void
set_mem_attributes (rtx ref, tree t, int objectp)
{
  set_mem_attributes_minus_bitpos (ref, t, objectp, 0);
}
