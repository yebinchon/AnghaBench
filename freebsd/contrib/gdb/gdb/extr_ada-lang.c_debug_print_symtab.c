
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {char* filename; char* dirname; int primary; } ;


 int BLOCKVECTOR (struct symtab*) ;
 int LINETABLE (struct symtab*) ;
 int debug_print_blocks (int ) ;
 int debug_print_lines (int ) ;
 int fprintf (int ,char*,struct symtab*,...) ;
 int stderr ;

__attribute__((used)) static void
debug_print_symtab (struct symtab *s)
{
  fprintf (stderr, "Symtab %p\n    File: %s; Dir: %s\n", s,
    s->filename, s->dirname);
  fprintf (stderr, "    Blockvector: %p, Primary: %d\n",
    BLOCKVECTOR (s), s->primary);
  debug_print_blocks (BLOCKVECTOR (s));
  fprintf (stderr, "    Line table: %p\n", LINETABLE (s));
  debug_print_lines (LINETABLE (s));
}
