#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
struct alpha_relax_info {int gp; void* changed_relocs; int /*<<< orphan*/  gotobj; TYPE_3__* h; TYPE_2__* gotent; void* changed_contents; scalar_t__ contents; int /*<<< orphan*/  abfd; TYPE_7__* link_info; int /*<<< orphan*/  sec; } ;
struct TYPE_20__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ reloc_howto_type ;
typedef  int bfd_vma ;
typedef  int bfd_signed_vma ;
typedef  void* bfd_boolean ;
struct TYPE_23__ {scalar_t__ shared; } ;
struct TYPE_22__ {int /*<<< orphan*/ * tls_sec; } ;
struct TYPE_21__ {int /*<<< orphan*/  r_info; scalar_t__ r_offset; } ;
struct TYPE_17__ {scalar_t__ type; } ;
struct TYPE_16__ {TYPE_1__ root; } ;
struct TYPE_19__ {TYPE_13__ root; } ;
struct TYPE_18__ {scalar_t__ use_count; } ;
struct TYPE_15__ {int total_got_size; int local_got_size; } ;
typedef  TYPE_5__ Elf_Internal_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int OP_LDA ; 
 int OP_LDQ ; 
 unsigned long R_ALPHA_DTPREL16 ; 
#define  R_ALPHA_GOTDTPREL 129 
#define  R_ALPHA_GOTTPREL 128 
 unsigned long R_ALPHA_GPREL16 ; 
 unsigned long R_ALPHA_LITERAL ; 
 unsigned long R_ALPHA_NONE ; 
 unsigned long R_ALPHA_TPREL16 ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_13__*,TYPE_7__*) ; 
 TYPE_12__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_7__*) ; 
 int FUNC7 (TYPE_7__*) ; 
 int FUNC8 (unsigned long) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ bfd_link_hash_undefweak ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_4__* elf64_alpha_howto_table ; 
 TYPE_6__* FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC13 (struct alpha_relax_info *info, bfd_vma symval,
			    Elf_Internal_Rela *irel, unsigned long r_type)
{
  unsigned int insn;
  bfd_signed_vma disp;

  /* Get the instruction.  */
  insn = FUNC9 (info->abfd, info->contents + irel->r_offset);

  if (insn >> 26 != OP_LDQ)
    {
      reloc_howto_type *howto = elf64_alpha_howto_table + r_type;
      (FUNC3)
       ("%B: %A+0x%lx: warning: %s relocation against unexpected insn",
	info->abfd, info->sec,
	(unsigned long) irel->r_offset, howto->name));
      return TRUE;
    }

  /* Can't relax dynamic symbols.  */
  if (FUNC4 (&info->h->root, info->link_info))
    return TRUE;

  /* Can't use local-exec relocations in shared libraries.  */
  if (r_type == R_ALPHA_GOTTPREL && info->link_info->shared)
    return TRUE;

  if (r_type == R_ALPHA_LITERAL)
    {
      /* Look for nice constant addresses.  This includes the not-uncommon
	 special case of 0 for undefweak symbols.  */
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

      FUNC0 (FUNC11 (info->link_info)->tls_sec != NULL);
      dtp_base = FUNC6 (info->link_info);
      tp_base = FUNC7 (info->link_info);
      disp = symval - (r_type == R_ALPHA_GOTDTPREL ? dtp_base : tp_base);

      insn = (OP_LDA << 26) | (insn & (31 << 21)) | (31 << 16);

      switch (r_type)
	{
	case R_ALPHA_GOTDTPREL:
	  r_type = R_ALPHA_DTPREL16;
	  break;
	case R_ALPHA_GOTTPREL:
	  r_type = R_ALPHA_TPREL16;
	  break;
	default:
	  FUNC0 (0);
	  return FALSE;
	}
    }

  if (disp < -0x8000 || disp >= 0x8000)
    return TRUE;

  FUNC10 (info->abfd, (bfd_vma) insn, info->contents + irel->r_offset);
  info->changed_contents = TRUE;

  /* Reduce the use count on this got entry by one, possibly
     eliminating it.  */
  if (--info->gotent->use_count == 0)
    {
      int sz = FUNC8 (r_type);
      FUNC5 (info->gotobj)->total_got_size -= sz;
      if (!info->h)
	FUNC5 (info->gotobj)->local_got_size -= sz;
    }

  /* Smash the existing GOT relocation for its 16-bit immediate pair.  */
  irel->r_info = FUNC1 (FUNC2 (irel->r_info), r_type);
  info->changed_relocs = TRUE;

  /* ??? Search forward through this basic block looking for insns
     that use the target register.  Stop after an insn modifying the
     register is seen, or after a branch or call.

     Any such memory load insn may be substituted by a load directly
     off the GP.  This allows the memory load insn to be issued before
     the calculated GP register would otherwise be ready.

     Any such jsr insn can be replaced by a bsr if it is in range.

     This would mean that we'd have to _add_ relocations, the pain of
     which gives one pause.  */

  return TRUE;
}