
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ref {scalar_t__ write_p; int delta; TYPE_1__* group; } ;
struct TYPE_2__ {int step; int base; } ;
typedef int FILE ;


 char* HOST_WIDE_INT_PRINT_DEC ;
 int TDF_SLIM ;
 int * dump_file ;
 int fprintf (int *,char*,...) ;
 int print_generic_expr (int *,int ,int ) ;

__attribute__((used)) static void
dump_mem_ref (FILE *file, struct mem_ref *ref)
{
  fprintf (file, "Reference %p:\n", (void *) ref);

  fprintf (file, "  group %p (base ", (void *) ref->group);
  print_generic_expr (file, ref->group->base, TDF_SLIM);
  fprintf (file, ", step ");
  fprintf (file, HOST_WIDE_INT_PRINT_DEC, ref->group->step);
  fprintf (file, ")\n");

  fprintf (dump_file, "  delta ");
  fprintf (file, HOST_WIDE_INT_PRINT_DEC, ref->delta);
  fprintf (file, "\n");

  fprintf (file, "  %s\n", ref->write_p ? "write" : "read");

  fprintf (file, "\n");
}
