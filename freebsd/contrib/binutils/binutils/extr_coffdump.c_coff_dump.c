
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_ofile {int nsources; int nsections; scalar_t__ sections; int source_head; } ;


 int dump_coff_section (scalar_t__) ;
 int dump_coff_sfile (int ) ;
 int nl () ;
 int printf (char*,...) ;

__attribute__((used)) static void
coff_dump (struct coff_ofile *ptr)
{
  int i;

  printf ("Coff dump");
  nl ();
  printf ("#souces %d", ptr->nsources);
  nl ();
  dump_coff_sfile (ptr->source_head);

  for (i = 0; i < ptr->nsections; i++)
    dump_coff_section (ptr->sections + i);
}
