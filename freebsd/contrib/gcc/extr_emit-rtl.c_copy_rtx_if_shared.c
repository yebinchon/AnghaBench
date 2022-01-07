
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int copy_rtx_if_shared_1 (int *) ;

rtx
copy_rtx_if_shared (rtx orig)
{
  copy_rtx_if_shared_1 (&orig);
  return orig;
}
