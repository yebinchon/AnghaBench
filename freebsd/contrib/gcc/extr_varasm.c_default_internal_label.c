
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ASM_GENERATE_INTERNAL_LABEL (char* const,char const*,unsigned long) ;
 int ASM_OUTPUT_INTERNAL_LABEL (int *,char* const) ;
 char* alloca (scalar_t__) ;
 scalar_t__ strlen (char const*) ;

void
default_internal_label (FILE *stream, const char *prefix,
   unsigned long labelno)
{
  char *const buf = alloca (40 + strlen (prefix));
  ASM_GENERATE_INTERNAL_LABEL (buf, prefix, labelno);
  ASM_OUTPUT_INTERNAL_LABEL (stream, buf);
}
