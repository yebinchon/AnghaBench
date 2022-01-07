
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch {int dummy; } ;
struct TYPE_2__ {int bits_per_word; int bits_per_byte; } ;


 TYPE_1__* gdbarch_bfd_arch_info (struct gdbarch*) ;

int
mips_regsize (struct gdbarch *gdbarch)
{
  return (gdbarch_bfd_arch_info (gdbarch)->bits_per_word
   / gdbarch_bfd_arch_info (gdbarch)->bits_per_byte);
}
