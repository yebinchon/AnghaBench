
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char const* name; int flags; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct section_hash_entry {TYPE_3__ section; TYPE_1__ root; } ;
typedef int * sec_ptr ;
typedef int flagword ;
struct TYPE_8__ {int section_htab; scalar_t__ output_has_begun; } ;
typedef TYPE_2__ bfd ;
typedef TYPE_3__ asection ;


 int FALSE ;
 int TRUE ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_section_hash_newfunc (int *,int *,char const*) ;
 int * bfd_section_init (TYPE_2__*,TYPE_3__*) ;
 int bfd_set_error (int ) ;
 struct section_hash_entry* section_hash_lookup (int *,char const*,int ,int ) ;

sec_ptr
bfd_make_section_anyway_with_flags (bfd *abfd, const char *name,
        flagword flags)
{
  struct section_hash_entry *sh;
  asection *newsect;

  if (abfd->output_has_begun)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return ((void*)0);
    }

  sh = section_hash_lookup (&abfd->section_htab, name, TRUE, FALSE);
  if (sh == ((void*)0))
    return ((void*)0);

  newsect = &sh->section;
  if (newsect->name != ((void*)0))
    {




      struct section_hash_entry *new_sh;
      new_sh = (struct section_hash_entry *)
 bfd_section_hash_newfunc (((void*)0), &abfd->section_htab, name);
      if (new_sh == ((void*)0))
 return ((void*)0);

      new_sh->root = sh->root;
      sh->root.next = &new_sh->root;
      newsect = &new_sh->section;
    }

  newsect->flags = flags;
  newsect->name = name;
  return bfd_section_init (abfd, newsect);
}
