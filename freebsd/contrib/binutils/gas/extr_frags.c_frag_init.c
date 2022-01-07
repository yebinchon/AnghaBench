
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* fr_type; } ;
struct TYPE_3__ {void* fr_type; } ;


 TYPE_2__ bss_address_frag ;
 void* rs_fill ;
 TYPE_1__ zero_address_frag ;

void
frag_init (void)
{
  zero_address_frag.fr_type = rs_fill;
  bss_address_frag.fr_type = rs_fill;
}
