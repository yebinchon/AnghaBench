
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUNCH_SIZE ;
 int * msym_bunch ;
 int msym_bunch_index ;
 scalar_t__ msym_count ;

void
init_minimal_symbol_collection (void)
{
  msym_count = 0;
  msym_bunch = ((void*)0);
  msym_bunch_index = BUNCH_SIZE;
}
