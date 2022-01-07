
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct elf_backend_data {int (* elf_backend_fake_sections ) (int *,TYPE_4__*,TYPE_3__*) ;TYPE_2__* s; int may_use_rel_p; int may_use_rela_p; } ;
struct bfd_link_order {scalar_t__ offset; scalar_t__ size; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_13__ {struct bfd_link_order* link_order; } ;
struct TYPE_15__ {int flags; scalar_t__ size; int alignment_power; int entsize; int use_rela_p; TYPE_1__ map_tail; scalar_t__ vma; scalar_t__ user_set_vma; int name; } ;
typedef TYPE_3__ asection ;
struct TYPE_16__ {unsigned int sh_name; scalar_t__ sh_size; int sh_addralign; int sh_type; int sh_entsize; int sh_flags; int sh_info; int * contents; TYPE_3__* bfd_section; scalar_t__ sh_link; scalar_t__ sh_offset; scalar_t__ sh_addr; } ;
struct TYPE_18__ {int rel_hdr; TYPE_4__ this_hdr; } ;
struct TYPE_17__ {int cverrefs; int cverdefs; } ;
struct TYPE_14__ {int sizeof_hash_entry; int sizeof_sym; int sizeof_dyn; int sizeof_rela; int sizeof_rel; int arch_size; } ;
typedef TYPE_4__ Elf_Internal_Shdr ;
typedef int Elf_External_Versym ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int GRP_ENTRY_SIZE ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_GROUP ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int SEC_MERGE ;
 int SEC_NEVER_LOAD ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 int SEC_STRINGS ;
 int SEC_THREAD_LOCAL ;
 int SHF_ALLOC ;
 int SHF_EXECINSTR ;
 int SHF_GROUP ;
 int SHF_MERGE ;
 int SHF_STRINGS ;
 int SHF_TLS ;
 int SHF_WRITE ;
 int SHT_NULL ;





 scalar_t__ TRUE ;
 int _bfd_elf_init_reloc_shdr (int *,int *,TYPE_3__*,int ) ;
 scalar_t__ _bfd_elf_strtab_add (int ,int ,int ) ;
 int * elf_group_name (TYPE_3__*) ;
 TYPE_8__* elf_section_data (TYPE_3__*) ;
 int elf_shstrtab (int *) ;
 TYPE_7__* elf_tdata (int *) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (int *,TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void
elf_fake_sections (bfd *abfd, asection *asect, void *failedptrarg)
{
  const struct elf_backend_data *bed = get_elf_backend_data (abfd);
  bfd_boolean *failedptr = failedptrarg;
  Elf_Internal_Shdr *this_hdr;
  unsigned int sh_type;

  if (*failedptr)
    {


      return;
    }

  this_hdr = &elf_section_data (asect)->this_hdr;

  this_hdr->sh_name = (unsigned int) _bfd_elf_strtab_add (elf_shstrtab (abfd),
         asect->name, FALSE);
  if (this_hdr->sh_name == (unsigned int) -1)
    {
      *failedptr = TRUE;
      return;
    }



  if ((asect->flags & SEC_ALLOC) != 0
      || asect->user_set_vma)
    this_hdr->sh_addr = asect->vma;
  else
    this_hdr->sh_addr = 0;

  this_hdr->sh_offset = 0;
  this_hdr->sh_size = asect->size;
  this_hdr->sh_link = 0;
  this_hdr->sh_addralign = 1 << asect->alignment_power;



  this_hdr->bfd_section = asect;
  this_hdr->contents = ((void*)0);



  if (this_hdr->sh_type == SHT_NULL)
    {
      if ((asect->flags & SEC_GROUP) != 0)
 this_hdr->sh_type = 137;
      else if ((asect->flags & SEC_ALLOC) != 0
        && (((asect->flags & (SEC_LOAD | SEC_HAS_CONTENTS)) == 0)
     || (asect->flags & SEC_NEVER_LOAD) != 0))
 this_hdr->sh_type = 134;
      else
 this_hdr->sh_type = 131;
    }

  switch (this_hdr->sh_type)
    {
    default:
      break;

    case 128:
    case 135:
    case 142:
    case 132:
    case 133:
    case 134:
    case 131:
      break;

    case 136:
      this_hdr->sh_entsize = bed->s->sizeof_hash_entry;
      break;

    case 143:
      this_hdr->sh_entsize = bed->s->sizeof_sym;
      break;

    case 144:
      this_hdr->sh_entsize = bed->s->sizeof_dyn;
      break;

    case 129:
      if (get_elf_backend_data (abfd)->may_use_rela_p)
 this_hdr->sh_entsize = bed->s->sizeof_rela;
      break;

     case 130:
      if (get_elf_backend_data (abfd)->may_use_rel_p)
 this_hdr->sh_entsize = bed->s->sizeof_rel;
      break;

     case 138:
      this_hdr->sh_entsize = sizeof (Elf_External_Versym);
      break;

     case 140:
      this_hdr->sh_entsize = 0;



      if (this_hdr->sh_info == 0)
 this_hdr->sh_info = elf_tdata (abfd)->cverdefs;
      else
 BFD_ASSERT (elf_tdata (abfd)->cverdefs == 0
      || this_hdr->sh_info == elf_tdata (abfd)->cverdefs);
      break;

    case 139:
      this_hdr->sh_entsize = 0;



      if (this_hdr->sh_info == 0)
 this_hdr->sh_info = elf_tdata (abfd)->cverrefs;
      else
 BFD_ASSERT (elf_tdata (abfd)->cverrefs == 0
      || this_hdr->sh_info == elf_tdata (abfd)->cverrefs);
      break;

    case 137:
      this_hdr->sh_entsize = GRP_ENTRY_SIZE;
      break;

    case 141:
      this_hdr->sh_entsize = bed->s->arch_size == 64 ? 0 : 4;
      break;
    }

  if ((asect->flags & SEC_ALLOC) != 0)
    this_hdr->sh_flags |= SHF_ALLOC;
  if ((asect->flags & SEC_READONLY) == 0)
    this_hdr->sh_flags |= SHF_WRITE;
  if ((asect->flags & SEC_CODE) != 0)
    this_hdr->sh_flags |= SHF_EXECINSTR;
  if ((asect->flags & SEC_MERGE) != 0)
    {
      this_hdr->sh_flags |= SHF_MERGE;
      this_hdr->sh_entsize = asect->entsize;
      if ((asect->flags & SEC_STRINGS) != 0)
 this_hdr->sh_flags |= SHF_STRINGS;
    }
  if ((asect->flags & SEC_GROUP) == 0 && elf_group_name (asect) != ((void*)0))
    this_hdr->sh_flags |= SHF_GROUP;
  if ((asect->flags & SEC_THREAD_LOCAL) != 0)
    {
      this_hdr->sh_flags |= SHF_TLS;
      if (asect->size == 0
   && (asect->flags & SEC_HAS_CONTENTS) == 0)
 {
   struct bfd_link_order *o = asect->map_tail.link_order;

   this_hdr->sh_size = 0;
   if (o != ((void*)0))
     {
       this_hdr->sh_size = o->offset + o->size;
       if (this_hdr->sh_size != 0)
  this_hdr->sh_type = 134;
     }
 }
    }


  sh_type = this_hdr->sh_type;
  if (bed->elf_backend_fake_sections
      && !(*bed->elf_backend_fake_sections) (abfd, this_hdr, asect))
    *failedptr = TRUE;

  if (sh_type == 134 && asect->size != 0)
    {


      this_hdr->sh_type = sh_type;
    }





  if ((asect->flags & SEC_RELOC) != 0
      && !_bfd_elf_init_reloc_shdr (abfd,
        &elf_section_data (asect)->rel_hdr,
        asect,
        asect->use_rela_p))
    *failedptr = TRUE;
}
