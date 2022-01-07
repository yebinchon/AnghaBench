
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_sfile {char* name; struct coff_sfile* next; int scope; } ;


 int dump_coff_scope (int ) ;
 int nl () ;
 int printf (char*,...) ;
 int tab (int) ;

__attribute__((used)) static void
dump_coff_sfile (struct coff_sfile *p)
{
  tab (1);
  printf ("List of source files");
  nl ();

  while (p)
    {
      tab (0);
      printf ("Source file %s", p->name);
      nl ();
      dump_coff_scope (p->scope);
      p = p->next;
    }
  tab (-1);
}
