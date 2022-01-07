
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ USING_SJLJ_EXCEPTIONS ;
 int flag_exceptions ;
 int flag_unwind_tables ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
ia64_output_function_end_prologue (FILE *file)
{
  if (!flag_unwind_tables && (!flag_exceptions || USING_SJLJ_EXCEPTIONS))
    return;

  fputs ("\t.body\n", file);
}
