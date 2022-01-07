
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sra_elt {int n_uses; int n_copies; struct sra_elt* sibling; struct sra_elt* groups; struct sra_elt* children; } ;


 int dump_file ;
 int dump_sra_elt_name (int ,struct sra_elt*) ;
 int fprintf (int ,char*,int,int) ;

__attribute__((used)) static void
scan_dump (struct sra_elt *elt)
{
  struct sra_elt *c;

  dump_sra_elt_name (dump_file, elt);
  fprintf (dump_file, ": n_uses=%u n_copies=%u\n", elt->n_uses, elt->n_copies);

  for (c = elt->children; c ; c = c->sibling)
    scan_dump (c);

  for (c = elt->groups; c ; c = c->sibling)
    scan_dump (c);
}
