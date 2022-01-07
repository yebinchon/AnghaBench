
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int S_GET_NAME (int *) ;
 int * symbol_new (char*,int ,int ,int *) ;
 int symbol_table_insert (int *) ;
 int * tag_find (char*) ;
 int tag_insert (int ,int *) ;
 int undefined_section ;
 int zero_address_frag ;

__attribute__((used)) static symbolS *
tag_find_or_make (char *name)
{
  symbolS *symbolP;

  if ((symbolP = tag_find (name)) == ((void*)0))
    {
      symbolP = symbol_new (name, undefined_section,
       0, &zero_address_frag);

      tag_insert (S_GET_NAME (symbolP), symbolP);
      symbol_table_insert (symbolP);
    }

  return symbolP;
}
