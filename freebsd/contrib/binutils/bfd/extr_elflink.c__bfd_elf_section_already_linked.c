
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_section_already_linked_hash_entry {struct bfd_section_already_linked* entry; } ;
struct bfd_section_already_linked {struct bfd_section* sec; struct bfd_section_already_linked* next; } ;
struct bfd_section {scalar_t__ output_section; int flags; struct bfd_section* kept_section; int * owner; int size; int name; } ;
struct bfd_link_info {int dummy; } ;
typedef int flagword ;
typedef int bfd_byte ;
typedef int bfd ;
typedef struct bfd_section asection ;


 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 int SEC_GROUP ;
 int SEC_LINK_DUPLICATES ;




 int SEC_LINK_ONCE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,struct bfd_section*) ;
 int abort () ;
 scalar_t__ bfd_abs_section_ptr ;
 int * bfd_coff_get_comdat_section (int *,struct bfd_section*) ;
 scalar_t__ bfd_elf_match_symbols_in_sections (struct bfd_section*,struct bfd_section*,struct bfd_link_info*) ;
 char* bfd_get_section_name (int *,struct bfd_section*) ;
 int bfd_malloc_and_get_section (int *,struct bfd_section*,int **) ;
 int bfd_section_already_linked_table_insert (struct bfd_section_already_linked_hash_entry*,struct bfd_section*) ;
 struct bfd_section_already_linked_hash_entry* bfd_section_already_linked_table_lookup (char const*) ;
 struct bfd_section* elf_next_in_group (struct bfd_section*) ;
 int * elf_sec_group (struct bfd_section*) ;
 int free (int *) ;
 int memcmp (int *,int *,int ) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,int ) ;
 int stub1 (int ,int *,struct bfd_section*) ;
 int stub2 (int ,int *,struct bfd_section*) ;
 int stub3 (int ,int *,struct bfd_section*) ;
 int stub4 (int ,int *,struct bfd_section*) ;
 int stub5 (int ,int *,struct bfd_section*) ;
 int stub6 (int ,int *,struct bfd_section*) ;

void
_bfd_elf_section_already_linked (bfd *abfd, struct bfd_section *sec,
     struct bfd_link_info *info)
{
  flagword flags;
  const char *name, *p;
  struct bfd_section_already_linked *l;
  struct bfd_section_already_linked_hash_entry *already_linked_list;

  if (sec->output_section == bfd_abs_section_ptr)
    return;

  flags = sec->flags;



  if ((flags & SEC_LINK_ONCE) == 0)
    return;



  if (elf_sec_group (sec) != ((void*)0))
    return;
  name = bfd_get_section_name (abfd, sec);

  if (CONST_STRNEQ (name, ".gnu.linkonce.")
      && (p = strchr (name + sizeof (".gnu.linkonce.") - 1, '.')) != ((void*)0))
    p++;
  else
    p = name;

  already_linked_list = bfd_section_already_linked_table_lookup (p);

  for (l = already_linked_list->entry; l != ((void*)0); l = l->next)
    {


      if ((flags & SEC_GROUP) == (l->sec->flags & SEC_GROUP)
   && strcmp (name, l->sec->name) == 0
   && bfd_coff_get_comdat_section (l->sec->owner, l->sec) == ((void*)0))
 {


   switch (flags & SEC_LINK_DUPLICATES)
     {
     default:
       abort ();

     case 131:
       break;

     case 130:
       (*_bfd_error_handler)
  (_("%B: ignoring duplicate section `%A'"),
   abfd, sec);
       break;

     case 128:
       if (sec->size != l->sec->size)
  (*_bfd_error_handler)
    (_("%B: duplicate section `%A' has different size"),
     abfd, sec);
       break;

     case 129:
       if (sec->size != l->sec->size)
  (*_bfd_error_handler)
    (_("%B: duplicate section `%A' has different size"),
     abfd, sec);
       else if (sec->size != 0)
  {
    bfd_byte *sec_contents, *l_sec_contents = ((void*)0);

    if (!bfd_malloc_and_get_section (abfd, sec, &sec_contents))
      (*_bfd_error_handler)
        (_("%B: warning: could not read contents of section `%A'"),
         abfd, sec);
    else if (!bfd_malloc_and_get_section (l->sec->owner, l->sec,
       &l_sec_contents))
      (*_bfd_error_handler)
        (_("%B: warning: could not read contents of section `%A'"),
         l->sec->owner, l->sec);
    else if (memcmp (sec_contents, l_sec_contents, sec->size) != 0)
      (*_bfd_error_handler)
        (_("%B: warning: duplicate section `%A' has different contents"),
         abfd, sec);

    if (sec_contents)
      free (sec_contents);
    if (l_sec_contents)
      free (l_sec_contents);
  }
       break;
     }






   sec->output_section = bfd_abs_section_ptr;
   sec->kept_section = l->sec;

   if (flags & SEC_GROUP)
     {
       asection *first = elf_next_in_group (sec);
       asection *s = first;

       while (s != ((void*)0))
  {
    s->output_section = bfd_abs_section_ptr;

    s->kept_section = l->sec;
    s = elf_next_in_group (s);

    if (s == first)
      break;
  }
     }

   return;
 }
    }




  if ((flags & SEC_GROUP) != 0)
    {
      asection *first = elf_next_in_group (sec);

      if (first != ((void*)0) && elf_next_in_group (first) == first)

 for (l = already_linked_list->entry; l != ((void*)0); l = l->next)
   if ((l->sec->flags & SEC_GROUP) == 0
       && bfd_coff_get_comdat_section (l->sec->owner, l->sec) == ((void*)0)
       && bfd_elf_match_symbols_in_sections (l->sec, first, info))
     {
       first->output_section = bfd_abs_section_ptr;
       first->kept_section = l->sec;
       sec->output_section = bfd_abs_section_ptr;
       break;
     }
    }
  else

    for (l = already_linked_list->entry; l != ((void*)0); l = l->next)
      if (l->sec->flags & SEC_GROUP)
 {
   asection *first = elf_next_in_group (l->sec);

   if (first != ((void*)0)
       && elf_next_in_group (first) == first
       && bfd_elf_match_symbols_in_sections (first, sec, info))
     {
       sec->output_section = bfd_abs_section_ptr;
       sec->kept_section = first;
       break;
     }
 }


  bfd_section_already_linked_table_insert (already_linked_list, sec);
}
