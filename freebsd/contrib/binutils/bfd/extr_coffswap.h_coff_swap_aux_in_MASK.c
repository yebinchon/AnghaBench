#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_9__ ;
typedef  struct TYPE_42__   TYPE_8__ ;
typedef  struct TYPE_41__   TYPE_7__ ;
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;
typedef  struct TYPE_34__   TYPE_18__ ;
typedef  struct TYPE_33__   TYPE_17__ ;
typedef  struct TYPE_32__   TYPE_16__ ;
typedef  struct TYPE_31__   TYPE_15__ ;
typedef  struct TYPE_30__   TYPE_14__ ;
typedef  struct TYPE_29__   TYPE_13__ ;
typedef  struct TYPE_28__   TYPE_12__ ;
typedef  struct TYPE_27__   TYPE_11__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/  x_size; int /*<<< orphan*/  x_lnno; } ;
struct TYPE_32__ {TYPE_15__ x_lnsz; void* x_fsize; } ;
struct TYPE_43__ {void** x_dimen; } ;
struct TYPE_41__ {int /*<<< orphan*/  l; } ;
struct TYPE_42__ {TYPE_7__ x_endndx; int /*<<< orphan*/  x_lnnoptr; } ;
struct TYPE_26__ {TYPE_9__ x_ary; TYPE_8__ x_fcn; } ;
struct TYPE_40__ {void* l; } ;
struct TYPE_33__ {TYPE_16__ x_misc; TYPE_10__ x_fcnary; void* x_tvndx; TYPE_6__ x_tagndx; } ;
struct TYPE_39__ {int /*<<< orphan*/  x_comdat; int /*<<< orphan*/  x_associated; int /*<<< orphan*/  x_checksum; int /*<<< orphan*/  x_nlinno; int /*<<< orphan*/  x_nreloc; int /*<<< orphan*/  x_scnlen; } ;
struct TYPE_35__ {void* x_offset; int /*<<< orphan*/  x_zeroes; } ;
struct TYPE_37__ {int /*<<< orphan*/  x_fname; TYPE_1__ x_n; } ;
union internal_auxent {TYPE_17__ x_sym; TYPE_5__ x_scn; TYPE_3__ x_file; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_36__ {int /*<<< orphan*/  x_offset; } ;
struct TYPE_38__ {int /*<<< orphan*/ * x_fname; TYPE_2__ x_n; } ;
struct TYPE_29__ {int /*<<< orphan*/  x_fsize; } ;
struct TYPE_27__ {int /*<<< orphan*/ * x_dimen; } ;
struct TYPE_28__ {TYPE_11__ x_ary; } ;
struct TYPE_30__ {TYPE_13__ x_misc; TYPE_12__ x_fcnary; int /*<<< orphan*/  x_tvndx; int /*<<< orphan*/  x_tagndx; } ;
struct TYPE_34__ {TYPE_14__ x_sym; TYPE_4__ x_file; } ;
typedef  TYPE_18__ AUXENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int,int,int,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int,int,int,int,void*) ; 
 int C_BLOCK ; 
 int C_FCN ; 
#define  C_FILE 131 
#define  C_HIDDEN 130 
#define  C_LEAFSTAT 129 
#define  C_STAT 128 
 int FILNMLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_18__*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 int T_NULL ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC14 (bfd *abfd,
		  void * ext1,
		  int type,
		  int class,
		  int indx,
		  int numaux,
		  void * in1)
{
  AUXENT *ext = (AUXENT *) ext1;
  union internal_auxent *in = (union internal_auxent *) in1;

#ifdef COFF_ADJUST_AUX_IN_PRE
  COFF_ADJUST_AUX_IN_PRE (abfd, ext1, type, class, indx, numaux, in1);
#endif

  switch (class)
    {
    case C_FILE:
      if (ext->x_file.x_fname[0] == 0)
	{
	  in->x_file.x_n.x_zeroes = 0;
	  in->x_file.x_n.x_offset = FUNC10 (abfd, ext->x_file.x_n.x_offset);
	}
      else
	{
#if FILNMLEN != E_FILNMLEN
#error we need to cope with truncating or extending FILNMLEN
#else
	  if (numaux > 1)
	    {
	      if (indx == 0)
		FUNC13 (in->x_file.x_fname, ext->x_file.x_fname,
			numaux * sizeof (AUXENT));
	    }
	  else
	    FUNC13 (in->x_file.x_fname, ext->x_file.x_fname, FILNMLEN);
#endif
	}
      goto end;

    case C_STAT:
#ifdef C_LEAFSTAT
    case C_LEAFSTAT:
#endif
    case C_HIDDEN:
      if (type == T_NULL)
	{
	  in->x_scn.x_scnlen = FUNC8 (abfd, ext);
	  in->x_scn.x_nreloc = FUNC7 (abfd, ext);
	  in->x_scn.x_nlinno = FUNC6 (abfd, ext);

	  /* PE defines some extra fields; we zero them out for
             safety.  */
	  in->x_scn.x_checksum = 0;
	  in->x_scn.x_associated = 0;
	  in->x_scn.x_comdat = 0;

	  goto end;
	}
      break;
    }

  in->x_sym.x_tagndx.l = FUNC10 (abfd, ext->x_sym.x_tagndx);
#ifndef NO_TVNDX
  in->x_sym.x_tvndx = FUNC9 (abfd, ext->x_sym.x_tvndx);
#endif

  if (class == C_BLOCK || class == C_FCN || FUNC11 (type) || FUNC12 (class))
    {
      in->x_sym.x_fcnary.x_fcn.x_lnnoptr = FUNC3 (abfd, ext);
      in->x_sym.x_fcnary.x_fcn.x_endndx.l = FUNC2 (abfd, ext);
    }
  else
    {
#if DIMNUM != E_DIMNUM
#error we need to cope with truncating or extending DIMNUM
#endif
      in->x_sym.x_fcnary.x_ary.x_dimen[0] =
	FUNC9 (abfd, ext->x_sym.x_fcnary.x_ary.x_dimen[0]);
      in->x_sym.x_fcnary.x_ary.x_dimen[1] =
	FUNC9 (abfd, ext->x_sym.x_fcnary.x_ary.x_dimen[1]);
      in->x_sym.x_fcnary.x_ary.x_dimen[2] =
	FUNC9 (abfd, ext->x_sym.x_fcnary.x_ary.x_dimen[2]);
      in->x_sym.x_fcnary.x_ary.x_dimen[3] =
	FUNC9 (abfd, ext->x_sym.x_fcnary.x_ary.x_dimen[3]);
    }

  if (FUNC11 (type))
    in->x_sym.x_misc.x_fsize = FUNC10 (abfd, ext->x_sym.x_misc.x_fsize);
  else
    {
      in->x_sym.x_misc.x_lnsz.x_lnno = FUNC4 (abfd, ext);
      in->x_sym.x_misc.x_lnsz.x_size = FUNC5 (abfd, ext);
    }

 end: ;

#ifdef COFF_ADJUST_AUX_IN_POST
  COFF_ADJUST_AUX_IN_POST (abfd, ext1, type, class, indx, numaux, in1);
#endif
}