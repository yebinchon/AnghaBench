
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref_group {struct mem_ref* refs; } ;
struct mem_ref {int prefetch_before; int prefetch_mod; struct mem_ref* next; } ;


 char* HOST_WIDE_INT_PRINT_DEC ;
 int PREFETCH_ALL ;
 int TDF_DETAILS ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,...) ;
 int prune_ref_by_reuse (struct mem_ref*,struct mem_ref*) ;

__attribute__((used)) static void
prune_group_by_reuse (struct mem_ref_group *group)
{
  struct mem_ref *ref_pruned;

  for (ref_pruned = group->refs; ref_pruned; ref_pruned = ref_pruned->next)
    {
      prune_ref_by_reuse (ref_pruned, group->refs);

      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "Reference %p:", (void *) ref_pruned);

   if (ref_pruned->prefetch_before == PREFETCH_ALL
       && ref_pruned->prefetch_mod == 1)
     fprintf (dump_file, " no restrictions");
   else if (ref_pruned->prefetch_before == 0)
     fprintf (dump_file, " do not prefetch");
   else if (ref_pruned->prefetch_before <= ref_pruned->prefetch_mod)
     fprintf (dump_file, " prefetch once");
   else
     {
       if (ref_pruned->prefetch_before != PREFETCH_ALL)
  {
    fprintf (dump_file, " prefetch before ");
    fprintf (dump_file, HOST_WIDE_INT_PRINT_DEC,
      ref_pruned->prefetch_before);
  }
       if (ref_pruned->prefetch_mod != 1)
  {
    fprintf (dump_file, " prefetch mod ");
    fprintf (dump_file, HOST_WIDE_INT_PRINT_DEC,
      ref_pruned->prefetch_mod);
  }
     }
   fprintf (dump_file, "\n");
 }
    }
}
