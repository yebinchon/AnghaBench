
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int FILE ;


 char* ASM_C ;
 char* ASM_GLOBAL ;
 char* ASM_LONG ;
 char* ASM_RVA_AFTER ;
 char* ASM_RVA_BEFORE ;
 int FOPEN_WT ;
 int HOW_BFD_READ_TARGET ;
 int TMP_HEAD_O ;
 int TMP_HEAD_S ;
 int _ (char*) ;
 int assemble_file (int ,int ) ;
 int * bfd_openr (int ,int ) ;
 int fatal (int ,int ) ;
 int fclose (int *) ;
 int * fopen (int ,int ) ;
 int fprintf (int *,char*,...) ;
 char* head_label ;
 char* imp_name_lab ;
 int no_idata4 ;
 int no_idata5 ;

__attribute__((used)) static bfd *
make_head (void)
{
  FILE *f = fopen (TMP_HEAD_S, FOPEN_WT);

  if (f == ((void*)0))
    {
      fatal (_("failed to open temporary head file: %s"), TMP_HEAD_S);
      return ((void*)0);
    }

  fprintf (f, "%s IMAGE_IMPORT_DESCRIPTOR\n", ASM_C);
  fprintf (f, "\t.section	.idata$2\n");

  fprintf(f,"\t%s\t%s\n", ASM_GLOBAL,head_label);

  fprintf (f, "%s:\n", head_label);

  fprintf (f, "\t%shname%s\t%sPtr to image import by name list\n",
    ASM_RVA_BEFORE, ASM_RVA_AFTER, ASM_C);

  fprintf (f, "\t%sthis should be the timestamp, but NT sometimes\n", ASM_C);
  fprintf (f, "\t%sdoesn't load DLLs when this is set.\n", ASM_C);
  fprintf (f, "\t%s\t0\t%s loaded time\n", ASM_LONG, ASM_C);
  fprintf (f, "\t%s\t0\t%s Forwarder chain\n", ASM_LONG, ASM_C);
  fprintf (f, "\t%s__%s_iname%s\t%s imported dll's name\n",
    ASM_RVA_BEFORE,
    imp_name_lab,
    ASM_RVA_AFTER,
    ASM_C);
  fprintf (f, "\t%sfthunk%s\t%s pointer to firstthunk\n",
    ASM_RVA_BEFORE,
    ASM_RVA_AFTER, ASM_C);

  fprintf (f, "%sStuff for compatibility\n", ASM_C);

  if (!no_idata5)
    {
      fprintf (f, "\t.section\t.idata$5\n");



      fprintf (f,"\t%s\t0\n", ASM_LONG);

      fprintf (f, "fthunk:\n");
    }

  if (!no_idata4)
    {
      fprintf (f, "\t.section\t.idata$4\n");
      fprintf (f, "\t%s\t0\n", ASM_LONG);
      fprintf (f, "\t.section	.idata$4\n");
      fprintf (f, "hname:\n");
    }

  fclose (f);

  assemble_file (TMP_HEAD_S, TMP_HEAD_O);

  return bfd_openr (TMP_HEAD_O, HOW_BFD_READ_TARGET);
}
