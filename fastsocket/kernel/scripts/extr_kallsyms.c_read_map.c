
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int start_pos; } ;
typedef int FILE ;


 int exit (int) ;
 int feof (int *) ;
 int fprintf (int ,char*) ;
 scalar_t__ read_symbol (int *,TYPE_1__*) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int stderr ;
 TYPE_1__* table ;
 int table_cnt ;
 int table_size ;

__attribute__((used)) static void read_map(FILE *in)
{
 while (!feof(in)) {
  if (table_cnt >= table_size) {
   table_size += 10000;
   table = realloc(table, sizeof(*table) * table_size);
   if (!table) {
    fprintf(stderr, "out of memory\n");
    exit (1);
   }
  }
  if (read_symbol(in, &table[table_cnt]) == 0) {
   table[table_cnt].start_pos = table_cnt;
   table_cnt++;
  }
 }
}
