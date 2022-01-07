
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int display_page_table (long,int) ;
 int error (char*,long) ;
 int get_cr3 () ;
 scalar_t__ isspace (char) ;
 long parse_and_eval_long (char*) ;
 int pdbr ;
 int puts_filtered (char*) ;

__attribute__((used)) static void
go32_pte (char *arg, int from_tty)
{
  long pde_idx = -1L, i;

  if (arg && *arg)
    {
      while (*arg && isspace(*arg))
 arg++;

      if (*arg)
 {
   pde_idx = parse_and_eval_long (arg);
   if (pde_idx < 0 || pde_idx >= 1024)
     error ("Entry %ld is outside valid limits [0..1023].", pde_idx);
 }
    }

  pdbr = get_cr3 ();
  if (!pdbr)
    puts_filtered ("Access to Page Tables is not supported on this system.\n");
  else if (pde_idx >= 0)
    display_page_table (pde_idx, 1);
  else
    for (i = 0; i < 1024; i++)
      display_page_table (i, 0);
}
