#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NOTE ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PROCESSOR_POWER5 ; 
#define  TYPE_CR_LOGICAL 140 
#define  TYPE_DELAYED_CR 139 
#define  TYPE_IDIV 138 
#define  TYPE_ISYNC 137 
#define  TYPE_LDIV 136 
#define  TYPE_LOAD_L 135 
#define  TYPE_MFCR 134 
#define  TYPE_MFCRF 133 
#define  TYPE_MFJMPR 132 
#define  TYPE_MTCR 131 
#define  TYPE_MTJMPR 130 
#define  TYPE_STORE_C 129 
#define  TYPE_SYNC 128 
 scalar_t__ USE ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  rs6000_cpu ; 
 int /*<<< orphan*/  rs6000_sched_groups ; 

__attribute__((used)) static int
FUNC4 (rtx insn)
{
  enum attr_type type;

  if (!rs6000_sched_groups)
    return 0;

  if (!insn
      || insn == NULL_RTX
      || FUNC0 (insn) == NOTE
      || FUNC0 (FUNC1 (insn)) == USE
      || FUNC0 (FUNC1 (insn)) == CLOBBER)
    return 0;

  type = FUNC2 (insn);

  switch (type)
    {
    case TYPE_MFCR:
    case TYPE_MFCRF:
    case TYPE_MTCR:
    case TYPE_DELAYED_CR:
    case TYPE_CR_LOGICAL:
    case TYPE_MTJMPR:
    case TYPE_MFJMPR:
      return 1;
    case TYPE_IDIV:
    case TYPE_LDIV:
      return 2;
    case TYPE_LOAD_L:
    case TYPE_STORE_C:
    case TYPE_ISYNC:
    case TYPE_SYNC:
      return 4;
    default:
      if (rs6000_cpu == PROCESSOR_POWER5
	  && FUNC3 (insn))
	return 2;
      return 0;
    }
}