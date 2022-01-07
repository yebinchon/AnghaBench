
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coff_scope {int offset; int size; int nvars; struct coff_scope* next; struct coff_scope* list_head; int vars_head; TYPE_1__* sec; } ;
struct TYPE_2__ {char* name; } ;


 int dump_coff_symbol (int ) ;
 int nl () ;
 int printf (char*,...) ;
 int tab (int) ;

__attribute__((used)) static void
dump_coff_scope (struct coff_scope *p)
{
  if (p)
    {
      tab (1);
      printf ("List of blocks %lx ",(unsigned long) p);

      if (p->sec)
 printf( "  %s %x..%x", p->sec->name,p->offset, p->offset + p->size -1);

      nl ();
      tab (0);
      printf ("*****************");
      nl ();

      while (p)
 {
   tab (0);
   printf ("vars %d", p->nvars);
   nl ();
   dump_coff_symbol (p->vars_head);
   printf ("blocks");
   nl ();
   dump_coff_scope (p->list_head);
   nl ();
   p = p->next;
 }

      tab (0);
      printf ("*****************");
      nl ();
      tab (-1);
    }
}
