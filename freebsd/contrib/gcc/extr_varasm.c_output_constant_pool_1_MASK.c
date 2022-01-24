#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct constant_descriptor_rtx {int /*<<< orphan*/  mode; int /*<<< orphan*/  labelno; int /*<<< orphan*/  constant; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_6__ {int flags; } ;
struct TYPE_8__ {TYPE_2__ common; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* internal_label ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_1__ asm_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  CONST 129 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 128 
 int /*<<< orphan*/  NOTE_INSN_DELETED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int PLUS ; 
 int SECTION_MERGE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_4__* in_section ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ targetm ; 

__attribute__((used)) static void
FUNC11 (struct constant_descriptor_rtx *desc,
			unsigned int align)
{
  rtx x, tmp;

  x = desc->constant;

  /* See if X is a LABEL_REF (or a CONST referring to a LABEL_REF)
     whose CODE_LABEL has been deleted.  This can occur if a jump table
     is eliminated by optimization.  If so, write a constant of zero
     instead.  Note that this can also happen by turning the
     CODE_LABEL into a NOTE.  */
  /* ??? This seems completely and utterly wrong.  Certainly it's
     not true for NOTE_INSN_DELETED_LABEL, but I disbelieve proper
     functioning even with INSN_DELETED_P and friends.  */

  tmp = x;
  switch (FUNC1 (x))
    {
    case CONST:
      if (FUNC1 (FUNC6 (x, 0)) != PLUS
	  || FUNC1 (FUNC6 (FUNC6 (x, 0), 0)) != LABEL_REF)
	break;
      tmp = FUNC6 (FUNC6 (x, 0), 0);
      /* FALLTHRU  */

    case LABEL_REF:
      tmp = FUNC6 (x, 0);
      FUNC8 (!FUNC3 (tmp));
      FUNC8 (!FUNC5 (tmp)
		  || FUNC4 (tmp) != NOTE_INSN_DELETED);
      break;

    default:
      break;
    }

#ifdef ASM_OUTPUT_SPECIAL_POOL_ENTRY
  ASM_OUTPUT_SPECIAL_POOL_ENTRY (asm_out_file, x, desc->mode,
				 align, desc->labelno, done);
#endif

  FUNC7 (align);

  /* Output the label.  */
  targetm.asm_out.internal_label (asm_out_file, "LC", desc->labelno);

  /* Output the data.  */
  FUNC9 (desc->mode, x, align);

  /* Make sure all constants in SECTION_MERGE and not SECTION_STRINGS
     sections have proper size.  */
  if (align > FUNC2 (desc->mode)
      && in_section
      && (in_section->common.flags & SECTION_MERGE))
    FUNC7 (align);

#ifdef ASM_OUTPUT_SPECIAL_POOL_ENTRY
 done:
#endif
  return;
}