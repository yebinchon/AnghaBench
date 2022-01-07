
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long hash; scalar_t__ next; } ;
struct TYPE_7__ {int constraint; int name; } ;
struct TYPE_5__ {TYPE_3__ output_section_statement; } ;
struct out_section_hash_entry {TYPE_2__ root; TYPE_1__ s; } ;
typedef TYPE_3__ lang_output_section_statement_type ;


 int FALSE ;
 scalar_t__ bfd_hash_lookup (int *,char const* const,int ,int ) ;
 int output_section_statement_table ;
 scalar_t__ strcmp (char const* const,int ) ;

lang_output_section_statement_type *
lang_output_section_find (const char *const name)
{
  struct out_section_hash_entry *entry;
  unsigned long hash;

  entry = ((struct out_section_hash_entry *)
    bfd_hash_lookup (&output_section_statement_table, name,
       FALSE, FALSE));
  if (entry == ((void*)0))
    return ((void*)0);

  hash = entry->root.hash;
  do
    {
      if (entry->s.output_section_statement.constraint != -1)
 return &entry->s.output_section_statement;
      entry = (struct out_section_hash_entry *) entry->root.next;
    }
  while (entry != ((void*)0)
  && entry->root.hash == hash
  && strcmp (name, entry->s.output_section_statement.name) == 0);

  return ((void*)0);
}
