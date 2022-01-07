
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {char const* name; } ;
struct section_hash_entry {TYPE_2__ section; } ;
struct TYPE_14__ {int section_htab; scalar_t__ output_has_begun; } ;
typedef TYPE_1__ bfd ;
typedef TYPE_2__ asection ;


 int BFD_ABS_SECTION_NAME ;
 int BFD_COM_SECTION_NAME ;
 int BFD_IND_SECTION_NAME ;
 int BFD_SEND (TYPE_1__*,int ,TYPE_1__*) ;
 int BFD_UND_SECTION_NAME ;
 int FALSE ;
 int TRUE ;
 int _new_section_hook ;
 TYPE_2__* bfd_abs_section_ptr ;
 TYPE_2__* bfd_com_section_ptr ;
 int bfd_error_invalid_operation ;
 TYPE_2__* bfd_ind_section_ptr ;
 TYPE_2__* bfd_section_init (TYPE_1__*,TYPE_2__*) ;
 int bfd_set_error (int ) ;
 TYPE_2__* bfd_und_section_ptr ;
 struct section_hash_entry* section_hash_lookup (int *,char const*,int ,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

asection *
bfd_make_section_old_way (bfd *abfd, const char *name)
{
  asection *newsect;

  if (abfd->output_has_begun)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return ((void*)0);
    }

  if (strcmp (name, BFD_ABS_SECTION_NAME) == 0)
    newsect = bfd_abs_section_ptr;
  else if (strcmp (name, BFD_COM_SECTION_NAME) == 0)
    newsect = bfd_com_section_ptr;
  else if (strcmp (name, BFD_UND_SECTION_NAME) == 0)
    newsect = bfd_und_section_ptr;
  else if (strcmp (name, BFD_IND_SECTION_NAME) == 0)
    newsect = bfd_ind_section_ptr;
  else
    {
      struct section_hash_entry *sh;

      sh = section_hash_lookup (&abfd->section_htab, name, TRUE, FALSE);
      if (sh == ((void*)0))
 return ((void*)0);

      newsect = &sh->section;
      if (newsect->name != ((void*)0))
 {

   return newsect;
 }

      newsect->name = name;
      return bfd_section_init (abfd, newsect);
    }




  if (! BFD_SEND (abfd, _new_section_hook, (abfd, newsect)))
    return ((void*)0);
  return newsect;
}
