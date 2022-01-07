
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct alpha_relax_info {int gp; void* changed_relocs; int gotobj; TYPE_3__* h; TYPE_2__* gotent; void* changed_contents; scalar_t__ contents; int abfd; TYPE_7__* link_info; int sec; } ;
struct TYPE_20__ {int name; } ;
typedef TYPE_4__ reloc_howto_type ;
typedef int bfd_vma ;
typedef int bfd_signed_vma ;
typedef void* bfd_boolean ;
struct TYPE_23__ {scalar_t__ shared; } ;
struct TYPE_22__ {int * tls_sec; } ;
struct TYPE_21__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_17__ {scalar_t__ type; } ;
struct TYPE_16__ {TYPE_1__ root; } ;
struct TYPE_19__ {TYPE_13__ root; } ;
struct TYPE_18__ {scalar_t__ use_count; } ;
struct TYPE_15__ {int total_got_size; int local_got_size; } ;
typedef TYPE_5__ Elf_Internal_Rela ;


 int BFD_ASSERT (int ) ;
 int ELF64_R_INFO (int ,unsigned long) ;
 int ELF64_R_SYM (int ) ;
 void* FALSE ;
 int OP_LDA ;
 int OP_LDQ ;
 unsigned long R_ALPHA_DTPREL16 ;


 unsigned long R_ALPHA_GPREL16 ;
 unsigned long R_ALPHA_LITERAL ;
 unsigned long R_ALPHA_NONE ;
 unsigned long R_ALPHA_TPREL16 ;
 void* TRUE ;
 int _bfd_error_handler (char*,int ,int ,unsigned long,int ) ;
 scalar_t__ alpha_elf_dynamic_symbol_p (TYPE_13__*,TYPE_7__*) ;
 TYPE_12__* alpha_elf_tdata (int ) ;
 int alpha_get_dtprel_base (TYPE_7__*) ;
 int alpha_get_tprel_base (TYPE_7__*) ;
 int alpha_got_entry_size (unsigned long) ;
 unsigned int bfd_get_32 (int ,scalar_t__) ;
 scalar_t__ bfd_link_hash_undefweak ;
 int bfd_put_32 (int ,int,scalar_t__) ;
 TYPE_4__* elf64_alpha_howto_table ;
 TYPE_6__* elf_hash_table (TYPE_7__*) ;
 int stub1 (char*,int ,int ,unsigned long,int ) ;

__attribute__((used)) static bfd_boolean
elf64_alpha_relax_got_load (struct alpha_relax_info *info, bfd_vma symval,
       Elf_Internal_Rela *irel, unsigned long r_type)
{
  unsigned int insn;
  bfd_signed_vma disp;


  insn = bfd_get_32 (info->abfd, info->contents + irel->r_offset);

  if (insn >> 26 != OP_LDQ)
    {
      reloc_howto_type *howto = elf64_alpha_howto_table + r_type;
      ((*_bfd_error_handler)
       ("%B: %A+0x%lx: warning: %s relocation against unexpected insn",
 info->abfd, info->sec,
 (unsigned long) irel->r_offset, howto->name));
      return TRUE;
    }


  if (alpha_elf_dynamic_symbol_p (&info->h->root, info->link_info))
    return TRUE;


  if (r_type == 128 && info->link_info->shared)
    return TRUE;

  if (r_type == R_ALPHA_LITERAL)
    {


      if ((info->h && info->h->root.root.type == bfd_link_hash_undefweak)
   || (!info->link_info->shared
       && (symval >= (bfd_vma)-0x8000 || symval < 0x8000)))
 {
   disp = 0;
   insn = (OP_LDA << 26) | (insn & (31 << 21)) | (31 << 16);
   insn |= (symval & 0xffff);
   r_type = R_ALPHA_NONE;
 }
      else
 {
   disp = symval - info->gp;
   insn = (OP_LDA << 26) | (insn & 0x03ff0000);
   r_type = R_ALPHA_GPREL16;
 }
    }
  else
    {
      bfd_vma dtp_base, tp_base;

      BFD_ASSERT (elf_hash_table (info->link_info)->tls_sec != ((void*)0));
      dtp_base = alpha_get_dtprel_base (info->link_info);
      tp_base = alpha_get_tprel_base (info->link_info);
      disp = symval - (r_type == 129 ? dtp_base : tp_base);

      insn = (OP_LDA << 26) | (insn & (31 << 21)) | (31 << 16);

      switch (r_type)
 {
 case 129:
   r_type = R_ALPHA_DTPREL16;
   break;
 case 128:
   r_type = R_ALPHA_TPREL16;
   break;
 default:
   BFD_ASSERT (0);
   return FALSE;
 }
    }

  if (disp < -0x8000 || disp >= 0x8000)
    return TRUE;

  bfd_put_32 (info->abfd, (bfd_vma) insn, info->contents + irel->r_offset);
  info->changed_contents = TRUE;



  if (--info->gotent->use_count == 0)
    {
      int sz = alpha_got_entry_size (r_type);
      alpha_elf_tdata (info->gotobj)->total_got_size -= sz;
      if (!info->h)
 alpha_elf_tdata (info->gotobj)->local_got_size -= sz;
    }


  irel->r_info = ELF64_R_INFO (ELF64_R_SYM (irel->r_info), r_type);
  info->changed_relocs = TRUE;
  return TRUE;
}
