
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* name; int constraint; } ;
struct TYPE_6__ {TYPE_3__ output_section_statement; } ;
struct TYPE_5__ {unsigned long hash; struct TYPE_5__* next; } ;
struct out_section_hash_entry {TYPE_2__ s; TYPE_1__ root; } ;
typedef TYPE_3__ lang_output_section_statement_type ;


 int FALSE ;
 int SPECIAL ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ bfd_hash_lookup (int *,char const* const,int ,int ) ;
 int einfo (int ,char const* const) ;
 scalar_t__ output_section_statement_newfunc (int *,int *,char const* const) ;
 int output_section_statement_table ;
 scalar_t__ strcmp (char const* const,char*) ;

__attribute__((used)) static lang_output_section_statement_type *
lang_output_section_statement_lookup_1 (const char *const name, int constraint)
{
  struct out_section_hash_entry *entry;
  struct out_section_hash_entry *last_ent;
  unsigned long hash;

  entry = ((struct out_section_hash_entry *)
    bfd_hash_lookup (&output_section_statement_table, name,
       TRUE, FALSE));
  if (entry == ((void*)0))
    {
      einfo (_("%P%F: failed creating section `%s': %E\n"), name);
      return ((void*)0);
    }

  if (entry->s.output_section_statement.name != ((void*)0))
    {


      hash = entry->root.hash;
      do
 {
   if (entry->s.output_section_statement.constraint != -1
       && (constraint == 0
    || (constraint == entry->s.output_section_statement.constraint
        && constraint != SPECIAL)))
     return &entry->s.output_section_statement;
   last_ent = entry;
   entry = (struct out_section_hash_entry *) entry->root.next;
 }
      while (entry != ((void*)0)
      && entry->root.hash == hash
      && strcmp (name, entry->s.output_section_statement.name) == 0);

      entry
 = ((struct out_section_hash_entry *)
    output_section_statement_newfunc (((void*)0),
          &output_section_statement_table,
          name));
      if (entry == ((void*)0))
 {
   einfo (_("%P%F: failed creating section `%s': %E\n"), name);
   return ((void*)0);
 }
      entry->root = last_ent->root;
      last_ent->root.next = &entry->root;
    }

  entry->s.output_section_statement.name = name;
  entry->s.output_section_statement.constraint = constraint;
  return &entry->s.output_section_statement;
}
