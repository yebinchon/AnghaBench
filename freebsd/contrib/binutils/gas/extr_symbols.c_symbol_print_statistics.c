
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int ,int ) ;
 int hash_print_statistics (int *,char*,int ) ;
 int local_hash ;
 int local_symbol_conversion_count ;
 int local_symbol_count ;
 int sy_hash ;

void
symbol_print_statistics (FILE *file)
{
  hash_print_statistics (file, "symbol table", sy_hash);
  hash_print_statistics (file, "mini local symbol table", local_hash);
  fprintf (file, "%lu mini local symbols created, %lu converted\n",
    local_symbol_count, local_symbol_conversion_count);
}
