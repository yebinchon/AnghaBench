
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lang_definedness_hash_entry {int iteration; } ;


 int FAIL () ;
 int FALSE ;
 scalar_t__ bfd_hash_lookup (int *,char const*,int ,int ) ;
 int lang_definedness_table ;

int
lang_symbol_definition_iteration (const char *name)
{
  struct lang_definedness_hash_entry *defentry
    = (struct lang_definedness_hash_entry *)
    bfd_hash_lookup (&lang_definedness_table, name, FALSE, FALSE);




  if (defentry == ((void*)0))
    FAIL ();

  return defentry->iteration;
}
