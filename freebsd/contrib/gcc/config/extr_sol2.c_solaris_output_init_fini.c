
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int ASM_OUTPUT_CALL (int *,int ) ;
 int DECL_ATTRIBUTES (int ) ;
 int fprintf (int *,char*) ;
 scalar_t__ lookup_attribute (char*,int ) ;

void
solaris_output_init_fini (FILE *file, tree decl)
{
  if (lookup_attribute ("init", DECL_ATTRIBUTES (decl)))
    {
      fprintf (file, "\t.pushsection\t\".init\"\n");
      ASM_OUTPUT_CALL (file, decl);
      fprintf (file, "\t.popsection\n");
    }

  if (lookup_attribute ("fini", DECL_ATTRIBUTES (decl)))
    {
      fprintf (file, "\t.pushsection\t\".fini\"\n");
      ASM_OUTPUT_CALL (file, decl);
      fprintf (file, "\t.popsection\n");
    }
}
