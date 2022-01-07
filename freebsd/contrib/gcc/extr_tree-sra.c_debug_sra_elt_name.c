
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sra_elt {int dummy; } ;


 int dump_sra_elt_name (int ,struct sra_elt*) ;
 int fputc (char,int ) ;
 int stderr ;

void
debug_sra_elt_name (struct sra_elt *elt)
{
  dump_sra_elt_name (stderr, elt);
  fputc ('\n', stderr);
}
