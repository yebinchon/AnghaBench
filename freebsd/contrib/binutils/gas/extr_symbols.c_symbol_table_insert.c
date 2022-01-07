
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int PTR ;


 scalar_t__ LOCAL_SYMBOL_CHECK (int *) ;
 int * S_GET_NAME (int *) ;
 int _ (char*) ;
 int as_fatal (int ,int *,char const*) ;
 char* hash_jam (int ,int *,int ) ;
 int know (int *) ;
 int local_hash ;
 int sy_hash ;

void
symbol_table_insert (symbolS *symbolP)
{
  register const char *error_string;

  know (symbolP);
  know (S_GET_NAME (symbolP));

  if (LOCAL_SYMBOL_CHECK (symbolP))
    {
      error_string = hash_jam (local_hash, S_GET_NAME (symbolP),
          (PTR) symbolP);
      if (error_string != ((void*)0))
 as_fatal (_("inserting \"%s\" into symbol table failed: %s"),
    S_GET_NAME (symbolP), error_string);
      return;
    }

  if ((error_string = hash_jam (sy_hash, S_GET_NAME (symbolP), (PTR) symbolP)))
    {
      as_fatal (_("inserting \"%s\" into symbol table failed: %s"),
  S_GET_NAME (symbolP), error_string);
    }
}
