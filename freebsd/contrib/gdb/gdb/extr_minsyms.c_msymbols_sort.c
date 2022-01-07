
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int minimal_symbol_count; int msymbols; } ;
struct minimal_symbol {int dummy; } ;


 int build_minimal_symbol_hash_tables (struct objfile*) ;
 int compare_minimal_symbols ;
 int qsort (int ,int ,int,int ) ;

void
msymbols_sort (struct objfile *objfile)
{
  qsort (objfile->msymbols, objfile->minimal_symbol_count,
  sizeof (struct minimal_symbol), compare_minimal_symbols);
  build_minimal_symbol_hash_tables (objfile);
}
