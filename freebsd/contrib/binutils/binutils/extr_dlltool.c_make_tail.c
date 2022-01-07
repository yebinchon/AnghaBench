
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int FILE ;


 char* ASM_GLOBAL ;
 char* ASM_LONG ;
 char* ASM_TEXT ;
 int FOPEN_WT ;
 int HOW_BFD_READ_TARGET ;
 int TMP_TAIL_O ;
 int TMP_TAIL_S ;
 int _ (char*) ;
 int assemble_file (int ,int ) ;
 int * bfd_openr (int ,int ) ;
 char* dll_name ;
 int fatal (int ,int ) ;
 int fclose (int *) ;
 int * fopen (int ,int ) ;
 int fprintf (int *,char*,...) ;
 char* imp_name_lab ;
 int no_idata4 ;
 int no_idata5 ;

__attribute__((used)) static bfd *
make_tail (void)
{
  FILE *f = fopen (TMP_TAIL_S, FOPEN_WT);

  if (f == ((void*)0))
    {
      fatal (_("failed to open temporary tail file: %s"), TMP_TAIL_S);
      return ((void*)0);
    }

  if (!no_idata4)
    {
      fprintf (f, "\t.section	.idata$4\n");



      fprintf (f,"\t%s\t0\n", ASM_LONG);

    }

  if (!no_idata5)
    {
      fprintf (f, "\t.section	.idata$5\n");



      fprintf (f,"\t%s\t0\n", ASM_LONG);

    }
  fprintf (f, "\t.section	.idata$7\n");


  fprintf (f, "\t%s\t__%s_iname\n", ASM_GLOBAL, imp_name_lab);
  fprintf (f, "__%s_iname:\t%s\t\"%s\"\n",
    imp_name_lab, ASM_TEXT, dll_name);

  fclose (f);

  assemble_file (TMP_TAIL_S, TMP_TAIL_O);

  return bfd_openr (TMP_TAIL_O, HOW_BFD_READ_TARGET);
}
