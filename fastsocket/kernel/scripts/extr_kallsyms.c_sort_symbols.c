
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_entry {int dummy; } ;


 int compare_symbols ;
 int qsort (int ,int ,int,int ) ;
 int table ;
 int table_cnt ;

__attribute__((used)) static void sort_symbols(void)
{
 qsort(table, table_cnt, sizeof(struct sym_entry), compare_symbols);
}
