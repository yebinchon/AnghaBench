
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_link_hash_table {int dummy; } ;
struct TYPE_6__ {struct bfd_link_hash_table root; } ;
struct TYPE_5__ {scalar_t__ refcount; } ;
struct TYPE_4__ {int * abfd; } ;
struct elf32_arm_link_hash_table {int plt_header_size; int plt_entry_size; int use_rel; TYPE_3__ root; TYPE_2__ tls_ldm_got; int * obfd; TYPE_1__ sym_sec; scalar_t__ symbian_p; scalar_t__ vxworks_p; scalar_t__ use_blx; scalar_t__ fix_v4bx; int target2_reloc; scalar_t__ target1_is_rel; scalar_t__ byteswap_code; int * bfd_of_glue_owner; scalar_t__ num_vfp11_fixes; scalar_t__ vfp11_erratum_glue_size; int vfp11_fix; scalar_t__ arm_glue_size; scalar_t__ thumb_glue_size; int * srelplt2; int * srelbss; int * sdynbss; int * srelplt; int * splt; int * srelgot; int * sgotplt; int * sgot; } ;
struct elf32_arm_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int BFD_ARM_VFP11_FIX_NONE ;
 int R_ARM_NONE ;
 int _bfd_elf_link_hash_table_init (TYPE_3__*,int *,int ,int) ;
 struct elf32_arm_link_hash_table* bfd_malloc (int) ;
 int elf32_arm_link_hash_newfunc ;
 int free (struct elf32_arm_link_hash_table*) ;

__attribute__((used)) static struct bfd_link_hash_table *
elf32_arm_link_hash_table_create (bfd *abfd)
{
  struct elf32_arm_link_hash_table *ret;
  bfd_size_type amt = sizeof (struct elf32_arm_link_hash_table);

  ret = bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);

  if (!_bfd_elf_link_hash_table_init (& ret->root, abfd,
          elf32_arm_link_hash_newfunc,
          sizeof (struct elf32_arm_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }

  ret->sgot = ((void*)0);
  ret->sgotplt = ((void*)0);
  ret->srelgot = ((void*)0);
  ret->splt = ((void*)0);
  ret->srelplt = ((void*)0);
  ret->sdynbss = ((void*)0);
  ret->srelbss = ((void*)0);
  ret->srelplt2 = ((void*)0);
  ret->thumb_glue_size = 0;
  ret->arm_glue_size = 0;
  ret->vfp11_fix = BFD_ARM_VFP11_FIX_NONE;
  ret->vfp11_erratum_glue_size = 0;
  ret->num_vfp11_fixes = 0;
  ret->bfd_of_glue_owner = ((void*)0);
  ret->byteswap_code = 0;
  ret->target1_is_rel = 0;
  ret->target2_reloc = R_ARM_NONE;




  ret->plt_header_size = 20;
  ret->plt_entry_size = 12;

  ret->fix_v4bx = 0;
  ret->use_blx = 0;
  ret->vxworks_p = 0;
  ret->symbian_p = 0;
  ret->use_rel = 1;
  ret->sym_sec.abfd = ((void*)0);
  ret->obfd = abfd;
  ret->tls_ldm_got.refcount = 0;

  return &ret->root.root;
}
