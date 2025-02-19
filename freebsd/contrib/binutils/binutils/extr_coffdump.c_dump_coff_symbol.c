
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_symbol {char* name; int tag; int number; struct coff_symbol* next; int visible; int where; int type; } ;


 int dump_coff_type (int ) ;
 int dump_coff_visible (int ) ;
 int dump_coff_where (int ) ;
 int nl () ;
 int printf (char*,...) ;
 int tab (int) ;

__attribute__((used)) static void
dump_coff_symbol (struct coff_symbol *p)
{
  tab (1);
  printf ("List of symbols");
  nl ();

  while (p)
    {
      tab (1);
      tab (1);
      printf ("Symbol  %s, tag %d, number %d", p->name, p->tag, p->number);
      nl ();
      tab (-1);
      tab (1);
      printf ("Type");
      nl ();
      dump_coff_type (p->type);
      tab (-1);
      tab (1);
      printf ("Where");
      dump_coff_where (p->where);
      tab (-1);
      tab (1);
      printf ("Visible");
      dump_coff_visible (p->visible);
      tab (-1);
      p = p->next;
      tab (-1);
    }
  tab (-1);
}
