
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct ppc_link_hash_table {int * stub_count; void* stub_error; TYPE_6__* glink; TYPE_11__* stub_bfd; TYPE_5__* relbrlt; int stub_hash_table; TYPE_4__* brlt; TYPE_2__* plt; int elf; void* emit_stub_syms; } ;
struct TYPE_20__ {int value; TYPE_6__* section; } ;
struct TYPE_21__ {TYPE_7__ def; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_8__ u; } ;
struct elf_link_hash_entry {int ref_regular; int def_regular; int ref_regular_nonweak; int forced_local; scalar_t__ non_elf; TYPE_9__ root; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;
typedef void* bfd_boolean ;
struct TYPE_12__ {int flags; scalar_t__ size; scalar_t__ rawsize; struct TYPE_12__* next; int * contents; } ;
typedef TYPE_10__ asection ;
struct TYPE_19__ {int size; int rawsize; int * contents; int owner; scalar_t__ output_offset; TYPE_3__* output_section; } ;
struct TYPE_18__ {scalar_t__ size; scalar_t__ reloc_count; int * contents; TYPE_11__* owner; } ;
struct TYPE_17__ {scalar_t__ size; int * contents; TYPE_11__* owner; } ;
struct TYPE_16__ {scalar_t__ vma; } ;
struct TYPE_15__ {scalar_t__ output_offset; TYPE_1__* output_section; } ;
struct TYPE_14__ {scalar_t__ vma; } ;
struct TYPE_13__ {TYPE_10__* sections; } ;


 int ADD_R12_R2_R11 ;
 int BCL_20_31 ;
 int BCTR ;
 int B_DOT ;
 void* FALSE ;
 int GLINK_CALL_STUB_SIZE ;
 int LD_R11_0R12 ;
 int LD_R2_0R12 ;
 int LD_R2_M16R11 ;
 int LIS_R0_0 ;
 unsigned int LI_R0_0 ;
 int MFLR_R11 ;
 int MFLR_R12 ;
 int MTCTR_R11 ;
 int MTLR_R12 ;
 int NOP ;
 int ORI_R0_R0_0 ;
 int PPC_HI (unsigned int) ;
 int PPC_LO (unsigned int) ;
 int SEC_LINKER_CREATED ;
 void* TRUE ;
 char* _ (char*) ;
 int _bfd_error_handler (char*) ;
 int bfd_hash_traverse (int *,int ,struct bfd_link_info*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_new ;
 char* bfd_malloc (int) ;
 int bfd_put_32 (int ,int,int *) ;
 int bfd_put_64 (int ,scalar_t__,int *) ;
 void* bfd_zalloc (TYPE_11__*,scalar_t__) ;
 struct elf_link_hash_entry* elf_link_hash_lookup (int *,char*,void*,void*,void*) ;
 int ppc_build_one_stub ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;
 int ppc_stub_long_branch ;
 int ppc_stub_long_branch_r2off ;
 int ppc_stub_plt_branch ;
 int ppc_stub_plt_branch_r2off ;
 int ppc_stub_plt_call ;
 int sprintf (char*,char*,int,char*,int ,int ,int ,int ,int ) ;
 int stub1 (char*) ;

bfd_boolean
ppc64_elf_build_stubs (bfd_boolean emit_stub_syms,
         struct bfd_link_info *info,
         char **stats)
{
  struct ppc_link_hash_table *htab = ppc_hash_table (info);
  asection *stub_sec;
  bfd_byte *p;
  int stub_sec_count = 0;

  htab->emit_stub_syms = emit_stub_syms;


  for (stub_sec = htab->stub_bfd->sections;
       stub_sec != ((void*)0);
       stub_sec = stub_sec->next)
    if ((stub_sec->flags & SEC_LINKER_CREATED) == 0
 && stub_sec->size != 0)
      {
 stub_sec->contents = bfd_zalloc (htab->stub_bfd, stub_sec->size);
 if (stub_sec->contents == ((void*)0))
   return FALSE;


 stub_sec->rawsize = stub_sec->size;
 stub_sec->size = 0;
      }

  if (htab->glink != ((void*)0) && htab->glink->size != 0)
    {
      unsigned int indx;
      bfd_vma plt0;


      if (htab->emit_stub_syms)
 {
   struct elf_link_hash_entry *h;
   h = elf_link_hash_lookup (&htab->elf, "__glink", TRUE, FALSE, FALSE);
   if (h == ((void*)0))
     return FALSE;
   if (h->root.type == bfd_link_hash_new)
     {
       h->root.type = bfd_link_hash_defined;
       h->root.u.def.section = htab->glink;
       h->root.u.def.value = 8;
       h->ref_regular = 1;
       h->def_regular = 1;
       h->ref_regular_nonweak = 1;
       h->forced_local = 1;
       h->non_elf = 0;
     }
 }
      p = htab->glink->contents;
      plt0 = (htab->plt->output_section->vma
       + htab->plt->output_offset
       - (htab->glink->output_section->vma
   + htab->glink->output_offset
   + 16));
      bfd_put_64 (htab->glink->owner, plt0, p);
      p += 8;
      bfd_put_32 (htab->glink->owner, MFLR_R12, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, BCL_20_31, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, MFLR_R11, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, LD_R2_M16R11, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, MTLR_R12, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, ADD_R12_R2_R11, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, LD_R11_0R12, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, LD_R2_0R12 | 8, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, MTCTR_R11, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, LD_R11_0R12 | 16, p);
      p += 4;
      bfd_put_32 (htab->glink->owner, BCTR, p);
      p += 4;
      while (p - htab->glink->contents < GLINK_CALL_STUB_SIZE)
 {
   bfd_put_32 (htab->glink->owner, NOP, p);
   p += 4;
 }


      indx = 0;
      while (p < htab->glink->contents + htab->glink->size)
 {
   if (indx < 0x8000)
     {
       bfd_put_32 (htab->glink->owner, LI_R0_0 | indx, p);
       p += 4;
     }
   else
     {
       bfd_put_32 (htab->glink->owner, LIS_R0_0 | PPC_HI (indx), p);
       p += 4;
       bfd_put_32 (htab->glink->owner, ORI_R0_R0_0 | PPC_LO (indx), p);
       p += 4;
     }
   bfd_put_32 (htab->glink->owner,
        B_DOT | ((htab->glink->contents - p + 8) & 0x3fffffc), p);
   indx++;
   p += 4;
 }
      htab->glink->rawsize = p - htab->glink->contents;
    }

  if (htab->brlt->size != 0)
    {
      htab->brlt->contents = bfd_zalloc (htab->brlt->owner,
      htab->brlt->size);
      if (htab->brlt->contents == ((void*)0))
 return FALSE;
    }
  if (htab->relbrlt != ((void*)0) && htab->relbrlt->size != 0)
    {
      htab->relbrlt->contents = bfd_zalloc (htab->relbrlt->owner,
         htab->relbrlt->size);
      if (htab->relbrlt->contents == ((void*)0))
 return FALSE;
    }


  bfd_hash_traverse (&htab->stub_hash_table, ppc_build_one_stub, info);

  if (htab->relbrlt != ((void*)0))
    htab->relbrlt->reloc_count = 0;

  for (stub_sec = htab->stub_bfd->sections;
       stub_sec != ((void*)0);
       stub_sec = stub_sec->next)
    if ((stub_sec->flags & SEC_LINKER_CREATED) == 0)
      {
 stub_sec_count += 1;
 if (stub_sec->rawsize != stub_sec->size)
   break;
      }

  if (stub_sec != ((void*)0)
      || htab->glink->rawsize != htab->glink->size)
    {
      htab->stub_error = TRUE;
      (*_bfd_error_handler) (_("stubs don't match calculated size"));
    }

  if (htab->stub_error)
    return FALSE;

  if (stats != ((void*)0))
    {
      *stats = bfd_malloc (500);
      if (*stats == ((void*)0))
 return FALSE;

      sprintf (*stats, _("linker stubs in %u group%s\n"
    "  branch       %lu\n"
    "  toc adjust   %lu\n"
    "  long branch  %lu\n"
    "  long toc adj %lu\n"
    "  plt call     %lu"),
        stub_sec_count,
        stub_sec_count == 1 ? "" : "s",
        htab->stub_count[ppc_stub_long_branch - 1],
        htab->stub_count[ppc_stub_long_branch_r2off - 1],
        htab->stub_count[ppc_stub_plt_branch - 1],
        htab->stub_count[ppc_stub_plt_branch_r2off - 1],
        htab->stub_count[ppc_stub_plt_call - 1]);
    }
  return TRUE;
}
