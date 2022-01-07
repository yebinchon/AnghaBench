
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* ASM_LONG ;
 char* ASM_QUAD ;
 int LPREFIX ;
 scalar_t__ TARGET_64BIT ;
 int fprintf (int *,char*,char const*,int,int) ;
 int gcc_assert (int) ;

void
ix86_output_addr_vec_elt (FILE *file, int value)
{
  const char *directive = ASM_LONG;





  gcc_assert (!TARGET_64BIT);


  fprintf (file, "%s%s%d\n", directive, LPREFIX, value);
}
