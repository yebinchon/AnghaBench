
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lang_definedness_hash_entry {int iteration; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;


 int FALSE ;
 scalar_t__ bfd_hash_lookup (int *,char const*,int ,int ) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_new ;
 scalar_t__ bfd_link_hash_undefined ;
 int lang_definedness_table ;
 int lang_statement_iteration ;

void
lang_update_definedness (const char *name, struct bfd_link_hash_entry *h)
{
  struct lang_definedness_hash_entry *defentry
    = (struct lang_definedness_hash_entry *)
    bfd_hash_lookup (&lang_definedness_table, name, FALSE, FALSE);


  if (defentry == ((void*)0))
    return;
  if (h->type != bfd_link_hash_undefined
      && h->type != bfd_link_hash_common
      && h->type != bfd_link_hash_new
      && defentry->iteration == -1)
    return;

  defentry->iteration = lang_statement_iteration;
}
