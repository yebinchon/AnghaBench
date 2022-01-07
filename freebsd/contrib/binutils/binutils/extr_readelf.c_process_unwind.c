
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_machine; } ;
typedef int FILE ;


 int EM_IA_64 ;
 int EM_PARISC ;
 char* _ (char*) ;
 int do_unwind ;
 TYPE_1__ elf_header ;
 int hppa_process_unwind ;
 int ia64_process_unwind ;
 int printf (char*) ;
 int stub1 (int *) ;

__attribute__((used)) static int
process_unwind (FILE *file)
{
  struct unwind_handler {
    int machtype;
    int (*handler)(FILE *file);
  } handlers[] = {
    { EM_IA_64, ia64_process_unwind },
    { EM_PARISC, hppa_process_unwind },
    { 0, 0 }
  };
  int i;

  if (!do_unwind)
    return 1;

  for (i = 0; handlers[i].handler != ((void*)0); i++)
    if (elf_header.e_machine == handlers[i].machtype)
      return handlers[i].handler (file);

  printf (_("\nThere are no unwind sections in this file.\n"));
  return 1;
}
