
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,int) ;
 int symfile_complaints ;

__attribute__((used)) static void
lbrac_mismatch_complaint (int arg1)
{
  complaint (&symfile_complaints,
      "N_LBRAC/N_RBRAC symbol mismatch at symtab pos %d", arg1);
}
