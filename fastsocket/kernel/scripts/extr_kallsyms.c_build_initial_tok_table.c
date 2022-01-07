
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int sym; } ;


 int learn_symbol (int ,int ) ;
 scalar_t__ symbol_valid (TYPE_1__*) ;
 TYPE_1__* table ;
 unsigned int table_cnt ;

__attribute__((used)) static void build_initial_tok_table(void)
{
 unsigned int i, pos;

 pos = 0;
 for (i = 0; i < table_cnt; i++) {
  if ( symbol_valid(&table[i]) ) {
   if (pos != i)
    table[pos] = table[i];
   learn_symbol(table[pos].sym, table[pos].len);
   pos++;
  }
 }
 table_cnt = pos;
}
