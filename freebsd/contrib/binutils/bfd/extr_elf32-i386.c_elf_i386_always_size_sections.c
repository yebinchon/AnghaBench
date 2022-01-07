
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elf_link_hash_entry {scalar_t__ type; int def_regular; int other; } ;
struct elf_backend_data {int (* elf_backend_hide_symbol ) (struct bfd_link_info*,struct elf_link_hash_entry*,int ) ;int collect; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_3__ {int * tls_sec; } ;


 int BSF_LOCAL ;
 int FALSE ;
 scalar_t__ STT_TLS ;
 int STV_HIDDEN ;
 int TRUE ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,int *,char*,int ,int *,int ,int *,int ,int ,struct bfd_link_hash_entry**) ;
 TYPE_1__* elf_hash_table (struct bfd_link_info*) ;
 struct elf_link_hash_entry* elf_link_hash_lookup (TYPE_1__*,char*,int ,int ,int ) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (struct bfd_link_info*,struct elf_link_hash_entry*,int ) ;

__attribute__((used)) static bfd_boolean
elf_i386_always_size_sections (bfd *output_bfd,
          struct bfd_link_info *info)
{
  asection *tls_sec = elf_hash_table (info)->tls_sec;

  if (tls_sec)
    {
      struct elf_link_hash_entry *tlsbase;

      tlsbase = elf_link_hash_lookup (elf_hash_table (info),
          "_TLS_MODULE_BASE_",
          FALSE, FALSE, FALSE);

      if (tlsbase && tlsbase->type == STT_TLS)
 {
   struct bfd_link_hash_entry *bh = ((void*)0);
   const struct elf_backend_data *bed
     = get_elf_backend_data (output_bfd);

   if (!(_bfd_generic_link_add_one_symbol
  (info, output_bfd, "_TLS_MODULE_BASE_", BSF_LOCAL,
   tls_sec, 0, ((void*)0), FALSE,
   bed->collect, &bh)))
     return FALSE;
   tlsbase = (struct elf_link_hash_entry *)bh;
   tlsbase->def_regular = 1;
   tlsbase->other = STV_HIDDEN;
   (*bed->elf_backend_hide_symbol) (info, tlsbase, TRUE);
 }
    }

  return TRUE;
}
