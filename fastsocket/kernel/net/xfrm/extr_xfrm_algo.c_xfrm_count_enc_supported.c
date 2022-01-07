
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ available; } ;


 int ealg_entries () ;
 TYPE_1__* ealg_list ;

int xfrm_count_enc_supported(void)
{
 int i, n;

 for (i = 0, n = 0; i < ealg_entries(); i++)
  if (ealg_list[i].available)
   n++;
 return n;
}
