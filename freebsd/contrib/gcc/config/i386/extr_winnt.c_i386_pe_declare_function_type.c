
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ C_EXT ;
 scalar_t__ C_STAT ;
 scalar_t__ DT_FCN ;
 int N_BTSHFT ;
 int assemble_name (int *,char const*) ;
 int fprintf (int *,char*,...) ;

void
i386_pe_declare_function_type (FILE *file, const char *name, int public)
{
  fprintf (file, "\t.def\t");
  assemble_name (file, name);
  fprintf (file, ";\t.scl\t%d;\t.type\t%d;\t.endef\n",
    public ? (int) C_EXT : (int) C_STAT,
    (int) DT_FCN << N_BTSHFT);
}
