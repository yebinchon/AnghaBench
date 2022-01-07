
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* desc; } ;
typedef int FILE ;


 TYPE_1__* fault_table ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
prettyfprint_faulttable_entry (FILE *file, int i, int verbose)
{
  fprintf (file, "%s", fault_table[i].name);
  if (verbose)
    fprintf (file, ": %s\n", fault_table[i].desc);
  else
    fprintf (file, " ");
}
