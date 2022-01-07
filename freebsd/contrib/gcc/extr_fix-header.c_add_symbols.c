
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbol_flags ;
typedef int * namelist ;
struct TYPE_2__ {int * names; int flags; } ;


 size_t SYMBOL_TABLE_SIZE ;
 size_t cur_symbol_table_size ;
 int fatal (char*) ;
 TYPE_1__* symbol_table ;

__attribute__((used)) static void
add_symbols (symbol_flags flags, namelist names)
{
  symbol_table[cur_symbol_table_size].flags = flags;
  symbol_table[cur_symbol_table_size].names = names;
  cur_symbol_table_size++;
  if (cur_symbol_table_size >= SYMBOL_TABLE_SIZE)
    fatal ("too many calls to add_symbols");
  symbol_table[cur_symbol_table_size].names = ((void*)0);
}
