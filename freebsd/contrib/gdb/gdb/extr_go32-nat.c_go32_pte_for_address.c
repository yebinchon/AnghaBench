
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int display_ptable_entry (int ,int ,int,unsigned int) ;
 int error_no_arg (char*) ;
 int get_cr3 () ;
 int get_pde (int) ;
 int get_pte (int ,int) ;
 scalar_t__ isspace (char) ;
 int parse_and_eval_address (char*) ;
 int pdbr ;
 int printf_filtered (char*,unsigned long long) ;
 int puts_filtered (char*) ;

__attribute__((used)) static void
go32_pte_for_address (char *arg, int from_tty)
{
  CORE_ADDR addr = 0, i;

  if (arg && *arg)
    {
      while (*arg && isspace(*arg))
 arg++;

      if (*arg)
 addr = parse_and_eval_address (arg);
    }
  if (!addr)
    error_no_arg ("linear address");

  pdbr = get_cr3 ();
  if (!pdbr)
    puts_filtered ("Access to Page Tables is not supported on this system.\n");
  else
    {
      int pde_idx = (addr >> 22) & 0x3ff;
      int pte_idx = (addr >> 12) & 0x3ff;
      unsigned offs = addr & 0xfff;

      printf_filtered ("Page Table entry for address 0x%llx:\n",
         (unsigned long long)addr);
      display_ptable_entry (get_pte (get_pde (pde_idx), pte_idx), 0, 1, offs);
    }
}
