
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macro_entry ;


 char TOLOWER (char const) ;
 int _ (char*) ;
 scalar_t__ alloca (size_t) ;
 int as_warn (int ,char*) ;
 int free_macro (int *) ;
 int * hash_find (int ,char*) ;
 int hash_jam (int ,char*,int *) ;
 int macro_hash ;
 size_t strlen (char const*) ;

void
delete_macro (const char *name)
{
  char *copy;
  size_t i, len;
  macro_entry *macro;

  len = strlen (name);
  copy = (char *) alloca (len + 1);
  for (i = 0; i < len; ++i)
    copy[i] = TOLOWER (name[i]);
  copy[i] = '\0';


  if ((macro = hash_find (macro_hash, copy)) != ((void*)0))
    {
      hash_jam (macro_hash, copy, ((void*)0));
      free_macro (macro);
    }
  else
    as_warn (_("Attempt to purge non-existant macro `%s'"), copy);
}
