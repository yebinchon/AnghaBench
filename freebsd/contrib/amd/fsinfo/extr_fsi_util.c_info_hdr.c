
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;

void
info_hdr(FILE *ef, char *info)
{
  fprintf(ef, "# *** NOTE: This file contains %s info\n", info);
}
