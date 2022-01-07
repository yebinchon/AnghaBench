
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int symbolS ;


 int * md_undefined_symbol (char*) ;
 int * symbol_new (char const*,int ,int ,int *) ;
 int undefined_section ;
 int zero_address_frag ;

symbolS *
symbol_make (const char *name)
{
  symbolS *symbolP;


  symbolP = md_undefined_symbol ((char *) name);

  if (!symbolP)
    symbolP = symbol_new (name, undefined_section, (valueT) 0, &zero_address_frag);

  return (symbolP);
}
