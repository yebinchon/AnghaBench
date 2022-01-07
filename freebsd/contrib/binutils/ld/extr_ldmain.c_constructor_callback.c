
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_link_info {int hash; scalar_t__ relocatable; } ;
struct TYPE_4__ {int * abfd; } ;
struct TYPE_5__ {TYPE_1__ undef; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_2__ u; } ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_6__ {int build_constructors; scalar_t__ warn_constructors; } ;


 int BFD_RELOC_CTOR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 char bfd_get_symbol_leading_char (int *) ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ bfd_link_hash_new ;
 scalar_t__ bfd_link_hash_undefined ;
 int * bfd_reloc_type_lookup (int *,int ) ;
 TYPE_3__ config ;
 int einfo (int ,...) ;
 int ldctor_add_set_entry (struct bfd_link_hash_entry*,int ,char const*,int *,int ) ;
 int * output_bfd ;
 int strcpy (char*,char*) ;

__attribute__((used)) static bfd_boolean
constructor_callback (struct bfd_link_info *info,
        bfd_boolean constructor,
        const char *name,
        bfd *abfd,
        asection *section,
        bfd_vma value)
{
  char *s;
  struct bfd_link_hash_entry *h;
  char set_name[1 + sizeof "__CTOR_LIST__"];

  if (config.warn_constructors)
    einfo (_("%P: warning: global constructor %s used\n"), name);

  if (! config.build_constructors)
    return TRUE;



  if (bfd_reloc_type_lookup (output_bfd, BFD_RELOC_CTOR) == ((void*)0)
      && (info->relocatable
   || bfd_reloc_type_lookup (abfd, BFD_RELOC_CTOR) == ((void*)0)))
    einfo (_("%P%F: BFD backend error: BFD_RELOC_CTOR unsupported\n"));

  s = set_name;
  if (bfd_get_symbol_leading_char (abfd) != '\0')
    *s++ = bfd_get_symbol_leading_char (abfd);
  if (constructor)
    strcpy (s, "__CTOR_LIST__");
  else
    strcpy (s, "__DTOR_LIST__");

  h = bfd_link_hash_lookup (info->hash, set_name, TRUE, TRUE, TRUE);
  if (h == (struct bfd_link_hash_entry *) ((void*)0))
    einfo (_("%P%F: bfd_link_hash_lookup failed: %E\n"));
  if (h->type == bfd_link_hash_new)
    {
      h->type = bfd_link_hash_undefined;
      h->u.undef.abfd = abfd;



    }

  ldctor_add_set_entry (h, BFD_RELOC_CTOR, name, section, value);
  return TRUE;
}
