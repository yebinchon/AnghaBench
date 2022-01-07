
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ reserved; TYPE_1__ memory; scalar_t__ rmo_size; } ;


 TYPE_2__ lmb ;
 int lmb_debug ;
 int lmb_dump (TYPE_1__*,char*) ;
 int pr_info (char*,...) ;

void lmb_dump_all(void)
{
 if (!lmb_debug)
  return;

 pr_info("LMB configuration:\n");
 pr_info(" rmo_size    = 0x%llx\n", (unsigned long long)lmb.rmo_size);
 pr_info(" memory.size = 0x%llx\n", (unsigned long long)lmb.memory.size);

 lmb_dump(&lmb.memory, "memory");
 lmb_dump(&lmb.reserved, "reserved");
}
