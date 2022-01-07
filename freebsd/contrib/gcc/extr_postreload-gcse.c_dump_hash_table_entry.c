
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occr {struct occr* next; int insn; } ;
struct expr {int hash; struct occr* avail_occr; int expr; } ;
typedef int rtx ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int print_rtl (int *,int ) ;
 int print_rtl_single (int *,int ) ;

__attribute__((used)) static int
dump_hash_table_entry (void **slot, void *filep)
{
  struct expr *expr = (struct expr *) *slot;
  FILE *file = (FILE *) filep;
  struct occr *occr;

  fprintf (file, "expr: ");
  print_rtl (file, expr->expr);
  fprintf (file,"\nhashcode: %u\n", expr->hash);
  fprintf (file,"list of occurrences:\n");
  occr = expr->avail_occr;
  while (occr)
    {
      rtx insn = occr->insn;
      print_rtl_single (file, insn);
      fprintf (file, "\n");
      occr = occr->next;
    }
  fprintf (file, "\n");
  return 1;
}
