
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_pic ;

int
default_reloc_rw_mask (void)
{
  return flag_pic ? 3 : 0;
}
