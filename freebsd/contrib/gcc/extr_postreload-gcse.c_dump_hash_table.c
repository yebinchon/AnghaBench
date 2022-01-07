
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int dump_hash_table_entry ;
 int expr_table ;
 int fprintf (int *,char*,...) ;
 int htab_collisions (int ) ;
 scalar_t__ htab_elements (int ) ;
 scalar_t__ htab_size (int ) ;
 int htab_traverse (int ,int ,int *) ;

__attribute__((used)) static void
dump_hash_table (FILE *file)
{
  fprintf (file, "\n\nexpression hash table\n");
  fprintf (file, "size %ld, %ld elements, %f collision/search ratio\n",
           (long) htab_size (expr_table),
           (long) htab_elements (expr_table),
           htab_collisions (expr_table));
  if (htab_elements (expr_table) > 0)
    {
      fprintf (file, "\n\ntable entries:\n");
      htab_traverse (expr_table, dump_hash_table_entry, file);
    }
  fprintf (file, "\n");
}
