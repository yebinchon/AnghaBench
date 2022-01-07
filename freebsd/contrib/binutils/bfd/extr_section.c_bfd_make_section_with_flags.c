
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char const* name; int flags; } ;
struct section_hash_entry {TYPE_2__ section; } ;
typedef int flagword ;
struct TYPE_8__ {int section_htab; scalar_t__ output_has_begun; } ;
typedef TYPE_1__ bfd ;
typedef TYPE_2__ asection ;


 int BFD_ABS_SECTION_NAME ;
 int BFD_COM_SECTION_NAME ;
 int BFD_IND_SECTION_NAME ;
 int BFD_UND_SECTION_NAME ;
 int FALSE ;
 int TRUE ;
 int bfd_error_invalid_operation ;
 TYPE_2__* bfd_section_init (TYPE_1__*,TYPE_2__*) ;
 int bfd_set_error (int ) ;
 struct section_hash_entry* section_hash_lookup (int *,char const*,int ,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

asection *
bfd_make_section_with_flags (bfd *abfd, const char *name,
        flagword flags)
{
  struct section_hash_entry *sh;
  asection *newsect;

  if (abfd->output_has_begun)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return ((void*)0);
    }

  if (strcmp (name, BFD_ABS_SECTION_NAME) == 0
      || strcmp (name, BFD_COM_SECTION_NAME) == 0
      || strcmp (name, BFD_UND_SECTION_NAME) == 0
      || strcmp (name, BFD_IND_SECTION_NAME) == 0)
    return ((void*)0);

  sh = section_hash_lookup (&abfd->section_htab, name, TRUE, FALSE);
  if (sh == ((void*)0))
    return ((void*)0);

  newsect = &sh->section;
  if (newsect->name != ((void*)0))
    {

      return ((void*)0);
    }

  newsect->name = name;
  newsect->flags = flags;
  return bfd_section_init (abfd, newsect);
}
