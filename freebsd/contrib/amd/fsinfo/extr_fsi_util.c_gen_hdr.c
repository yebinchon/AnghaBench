
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;

void
gen_hdr(FILE *ef, char *hn)
{
  fprintf(ef, "# *** NOTE: Only for use on %s\n", hn);
}
