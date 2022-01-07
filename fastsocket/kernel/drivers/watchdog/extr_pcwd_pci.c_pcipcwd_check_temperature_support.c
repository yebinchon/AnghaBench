
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int supports_temp; int io_addr; } ;


 int inb_p (int ) ;
 TYPE_1__ pcipcwd_private ;

__attribute__((used)) static inline void pcipcwd_check_temperature_support(void)
{
 if (inb_p(pcipcwd_private.io_addr) != 0xF0)
  pcipcwd_private.supports_temp = 1;
}
