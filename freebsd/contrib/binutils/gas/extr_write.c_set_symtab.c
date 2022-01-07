
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int asymbol ;


 int assert (int ) ;
 int ** bfd_alloc (int ,int) ;
 int bfd_set_symtab (int ,int **,int) ;
 int stdoutput ;
 int * symbol_get_bfdsym (int *) ;
 int symbol_mark_written (int *) ;
 int * symbol_next (int *) ;
 int * symbol_rootP ;
 int symbol_table_frozen ;

__attribute__((used)) static void
set_symtab (void)
{
  int nsyms;
  asymbol **asympp;
  symbolS *symp;
  bfd_boolean result;




  nsyms = 0;
  for (symp = symbol_rootP; symp; symp = symbol_next (symp))
    nsyms++;

  if (nsyms)
    {
      int i;
      bfd_size_type amt = (bfd_size_type) nsyms * sizeof (asymbol *);

      asympp = bfd_alloc (stdoutput, amt);
      symp = symbol_rootP;
      for (i = 0; i < nsyms; i++, symp = symbol_next (symp))
 {
   asympp[i] = symbol_get_bfdsym (symp);
   symbol_mark_written (symp);
 }
    }
  else
    asympp = 0;
  result = bfd_set_symtab (stdoutput, asympp, nsyms);
  assert (result);
  symbol_table_frozen = 1;
}
