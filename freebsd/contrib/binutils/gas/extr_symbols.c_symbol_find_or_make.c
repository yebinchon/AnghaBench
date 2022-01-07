
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int symbolS ;


 scalar_t__ bfd_is_local_label_name (int ,char const*) ;
 int flag_keep_locals ;
 scalar_t__ local_symbol_make (char const*,int ,int ,int *) ;
 int * md_undefined_symbol (char*) ;
 int stdoutput ;
 int * symbol_find (char const*) ;
 int * symbol_make (char const*) ;
 int symbol_table_insert (int *) ;
 int undefined_section ;
 int zero_address_frag ;

symbolS *
symbol_find_or_make (const char *name)
{
  register symbolS *symbolP;

  symbolP = symbol_find (name);

  if (symbolP == ((void*)0))
    {
      if (! flag_keep_locals && bfd_is_local_label_name (stdoutput, name))
 {
   symbolP = md_undefined_symbol ((char *) name);
   if (symbolP != ((void*)0))
     return symbolP;

   symbolP = (symbolS *) local_symbol_make (name, undefined_section,
         (valueT) 0,
         &zero_address_frag);
   return symbolP;
 }

      symbolP = symbol_make (name);

      symbol_table_insert (symbolP);
    }

  return (symbolP);
}
