
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab {char* dirname; char* filename; char* debugformat; int block_line_section; TYPE_1__* linetable; } ;
struct linetable_entry {scalar_t__ pc; scalar_t__ line; } ;
struct TYPE_2__ {int nitems; struct linetable_entry* item; } ;


 int fprintf (int ,char*,...) ;
 int stderr ;

void
ada_dump_symtab (struct symtab *s)
{
  int i;
  fprintf (stderr, "New symtab: [\n");
  fprintf (stderr, "  Name: %s/%s;\n",
    s->dirname ? s->dirname : "?", s->filename ? s->filename : "?");
  fprintf (stderr, "  Format: %s;\n", s->debugformat);
  if (s->linetable != ((void*)0))
    {
      fprintf (stderr, "  Line table (section %d):\n", s->block_line_section);
      for (i = 0; i < s->linetable->nitems; i += 1)
 {
   struct linetable_entry *e = s->linetable->item + i;
   fprintf (stderr, "    %4ld: %8lx\n", (long) e->line, (long) e->pc);
 }
    }
  fprintf (stderr, "]\n");
}
