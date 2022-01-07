
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int display_ptable_entry (int ,int ,int ,int ) ;
 unsigned long get_pde (long) ;
 int get_pte (unsigned long,int) ;
 int printf_filtered (char*,unsigned long) ;
 int puts_filtered (char*) ;

__attribute__((used)) static void
display_page_table (long n, int force)
{
  unsigned long pde = get_pde (n);

  if ((pde & 1) != 0)
    {
      int i;

      printf_filtered ("Page Table pointed to by Page Directory entry 0x%lx:\n", n);
      for (i = 0; i < 1024; i++)
 display_ptable_entry (get_pte (pde, i), 0, 0, 0);
      puts_filtered ("\n");
    }
  else if (force)
    printf_filtered ("Page Table not present; value=0x%lx.\n", pde >> 1);
}
