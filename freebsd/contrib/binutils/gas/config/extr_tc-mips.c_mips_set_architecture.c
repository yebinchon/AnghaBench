
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_cpu_info {int isa; int cpu; } ;
struct TYPE_2__ {int isa; int arch; } ;


 int file_mips_arch ;
 TYPE_1__ mips_opts ;

__attribute__((used)) static void
mips_set_architecture (const struct mips_cpu_info *info)
{
  if (info != 0)
    {
      file_mips_arch = info->cpu;
      mips_opts.arch = info->cpu;
      mips_opts.isa = info->isa;
    }
}
