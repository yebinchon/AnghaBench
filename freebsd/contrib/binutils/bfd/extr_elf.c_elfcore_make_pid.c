
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {int core_lwpid; int core_pid; } ;


 TYPE_1__* elf_tdata (int *) ;

__attribute__((used)) static int
elfcore_make_pid (bfd *abfd)
{
  return ((elf_tdata (abfd)->core_lwpid << 16)
   + (elf_tdata (abfd)->core_pid));
}
