
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int RS6000_OUTPUT_BASENAME (int *,char const*) ;
 scalar_t__ VTABLE_NAME_P (char const*) ;
 char* XSTR (int ,int ) ;
 int assemble_name (int *,char const*) ;

void
rs6000_output_symbol_ref (FILE *file, rtx x)
{






  const char *name = XSTR (x, 0);

  if (VTABLE_NAME_P (name))
    {
      RS6000_OUTPUT_BASENAME (file, name);
    }
  else
    assemble_name (file, name);
}
