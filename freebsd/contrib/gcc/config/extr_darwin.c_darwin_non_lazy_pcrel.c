
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int ASM_OUTPUT_LABELREF (int *,char const*) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ SYMBOL_REF ;
 int fputs (char*,int *) ;
 int gcc_assert (int) ;
 char* machopic_indirection_name (int ,int) ;

void
darwin_non_lazy_pcrel (FILE *file, rtx addr)
{
  const char *nlp_name;

  gcc_assert (GET_CODE (addr) == SYMBOL_REF);

  nlp_name = machopic_indirection_name (addr, 0);
  fputs ("\t.long\t", file);
  ASM_OUTPUT_LABELREF (file, nlp_name);
  fputs ("-.", file);
}
