#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  crfd; int /*<<< orphan*/  ifdMax; int /*<<< orphan*/  issMax; int /*<<< orphan*/  iauxMax; int /*<<< orphan*/  ioptMax; int /*<<< orphan*/  isymMax; int /*<<< orphan*/  ipdMax; int /*<<< orphan*/  idnMax; int /*<<< orphan*/  cbLine; int /*<<< orphan*/  ilineMax; int /*<<< orphan*/  vstamp; } ;
struct ecoff_debug_info {int /*<<< orphan*/  external_rfd; TYPE_1__ symbolic_header; int /*<<< orphan*/  external_fdr; int /*<<< orphan*/  ss; int /*<<< orphan*/  external_aux; int /*<<< orphan*/  external_opt; int /*<<< orphan*/  external_sym; int /*<<< orphan*/  external_pdr; int /*<<< orphan*/  external_dnr; int /*<<< orphan*/  line; } ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_12__ {int /*<<< orphan*/  (* swap_ext_out ) (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* swap_ext_in ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ;} ;
struct TYPE_16__ {TYPE_3__ debug_swap; } ;
struct TYPE_15__ {int /*<<< orphan*/ * cprmask; int /*<<< orphan*/  fprmask; int /*<<< orphan*/  gprmask; int /*<<< orphan*/  gp; struct ecoff_debug_info debug_info; } ;
struct TYPE_14__ {int /*<<< orphan*/  native; scalar_t__ local; } ;
struct TYPE_11__ {int /*<<< orphan*/  index; } ;
struct TYPE_13__ {TYPE_2__ asym; int /*<<< orphan*/  ifd; } ;
typedef  TYPE_4__ EXTR ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_ecoff_flavour ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifdNil ; 
 int /*<<< orphan*/  indexNil ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC8 (bfd *ibfd, bfd *obfd)
{
  struct ecoff_debug_info *iinfo = &FUNC4 (ibfd)->debug_info;
  struct ecoff_debug_info *oinfo = &FUNC4 (obfd)->debug_info;
  int i;
  asymbol **sym_ptr_ptr;
  size_t c;
  bfd_boolean local;

  /* We only want to copy information over if both BFD's use ECOFF
     format.  */
  if (FUNC0 (ibfd) != bfd_target_ecoff_flavour
      || FUNC0 (obfd) != bfd_target_ecoff_flavour)
    return TRUE;

  /* Copy the GP value and the register masks.  */
  FUNC4 (obfd)->gp = FUNC4 (ibfd)->gp;
  FUNC4 (obfd)->gprmask = FUNC4 (ibfd)->gprmask;
  FUNC4 (obfd)->fprmask = FUNC4 (ibfd)->fprmask;
  for (i = 0; i < 3; i++)
    FUNC4 (obfd)->cprmask[i] = FUNC4 (ibfd)->cprmask[i];

  /* Copy the version stamp.  */
  oinfo->symbolic_header.vstamp = iinfo->symbolic_header.vstamp;

  /* If there are no symbols, don't copy any debugging information.  */
  c = FUNC2 (obfd);
  sym_ptr_ptr = FUNC1 (obfd);
  if (c == 0 || sym_ptr_ptr == NULL)
    return TRUE;

  /* See if there are any local symbols.  */
  local = FALSE;
  for (; c > 0; c--, sym_ptr_ptr++)
    {
      if (FUNC5 (*sym_ptr_ptr)->local)
	{
	  local = TRUE;
	  break;
	}
    }

  if (local)
    {
      /* There are some local symbols.  We just bring over all the
	 debugging information.  FIXME: This is not quite the right
	 thing to do.  If the user has asked us to discard all
	 debugging information, then we are probably going to wind up
	 keeping it because there will probably be some local symbol
	 which objcopy did not discard.  We should actually break
	 apart the debugging information and only keep that which
	 applies to the symbols we want to keep.  */
      oinfo->symbolic_header.ilineMax = iinfo->symbolic_header.ilineMax;
      oinfo->symbolic_header.cbLine = iinfo->symbolic_header.cbLine;
      oinfo->line = iinfo->line;

      oinfo->symbolic_header.idnMax = iinfo->symbolic_header.idnMax;
      oinfo->external_dnr = iinfo->external_dnr;

      oinfo->symbolic_header.ipdMax = iinfo->symbolic_header.ipdMax;
      oinfo->external_pdr = iinfo->external_pdr;

      oinfo->symbolic_header.isymMax = iinfo->symbolic_header.isymMax;
      oinfo->external_sym = iinfo->external_sym;

      oinfo->symbolic_header.ioptMax = iinfo->symbolic_header.ioptMax;
      oinfo->external_opt = iinfo->external_opt;

      oinfo->symbolic_header.iauxMax = iinfo->symbolic_header.iauxMax;
      oinfo->external_aux = iinfo->external_aux;

      oinfo->symbolic_header.issMax = iinfo->symbolic_header.issMax;
      oinfo->ss = iinfo->ss;

      oinfo->symbolic_header.ifdMax = iinfo->symbolic_header.ifdMax;
      oinfo->external_fdr = iinfo->external_fdr;

      oinfo->symbolic_header.crfd = iinfo->symbolic_header.crfd;
      oinfo->external_rfd = iinfo->external_rfd;
    }
  else
    {
      /* We are discarding all the local symbol information.  Look
	 through the external symbols and remove all references to FDR
	 or aux information.  */
      c = FUNC2 (obfd);
      sym_ptr_ptr = FUNC1 (obfd);
      for (; c > 0; c--, sym_ptr_ptr++)
	{
	  EXTR esym;

	  (*(FUNC3 (obfd)->debug_swap.swap_ext_in))
	    (obfd, FUNC5 (*sym_ptr_ptr)->native, &esym);
	  esym.ifd = ifdNil;
	  esym.asym.index = indexNil;
	  (*(FUNC3 (obfd)->debug_swap.swap_ext_out))
	    (obfd, &esym, FUNC5 (*sym_ptr_ptr)->native);
	}
    }

  return TRUE;
}