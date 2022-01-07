
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {int core_signal; } ;


 TYPE_1__* elf_tdata (int *) ;

int
elf_core_file_failing_signal (bfd *abfd)
{
  return elf_tdata (abfd)->core_signal;
}
