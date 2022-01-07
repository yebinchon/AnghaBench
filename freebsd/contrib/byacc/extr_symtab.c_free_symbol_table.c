
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (scalar_t__) ;
 scalar_t__ symbol_table ;

void
free_symbol_table(void)
{
    FREE(symbol_table);
    symbol_table = 0;
}
