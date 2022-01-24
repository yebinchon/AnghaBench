#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int fr_var; int fr_subtype; } ;
typedef  TYPE_1__ fragS ;
struct TYPE_16__ {int /*<<< orphan*/  owner; } ;
typedef  TYPE_2__ asection ;

/* Variables and functions */
#define  T_MNEM_add_pc 152 
#define  T_MNEM_add_sp 151 
#define  T_MNEM_addi 150 
#define  T_MNEM_addis 149 
#define  T_MNEM_adr 148 
#define  T_MNEM_b 147 
#define  T_MNEM_bcond 146 
#define  T_MNEM_cmn 145 
#define  T_MNEM_cmp 144 
#define  T_MNEM_dec_sp 143 
#define  T_MNEM_inc_sp 142 
#define  T_MNEM_ldr 141 
#define  T_MNEM_ldr_pc 140 
#define  T_MNEM_ldr_pc2 139 
#define  T_MNEM_ldr_sp 138 
#define  T_MNEM_ldrb 137 
#define  T_MNEM_ldrh 136 
#define  T_MNEM_mov 135 
#define  T_MNEM_movs 134 
#define  T_MNEM_str 133 
#define  T_MNEM_str_sp 132 
#define  T_MNEM_strb 131 
#define  T_MNEM_strh 130 
#define  T_MNEM_subi 129 
#define  T_MNEM_subis 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*,long) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*,int,long) ; 
 int FUNC6 (TYPE_1__*,int,int) ; 

int
FUNC7 (asection *sec, fragS *fragp, long stretch)
{
  int oldsize;
  int newsize;

  oldsize = fragp->fr_var;
  switch (fragp->fr_subtype)
    {
    case T_MNEM_ldr_pc2:
      newsize = FUNC4(fragp, sec, stretch);
      break;
    case T_MNEM_ldr_pc:
    case T_MNEM_ldr_sp:
    case T_MNEM_str_sp:
      newsize = FUNC6(fragp, 8, 2);
      break;
    case T_MNEM_ldr:
    case T_MNEM_str:
      newsize = FUNC6(fragp, 5, 2);
      break;
    case T_MNEM_ldrh:
    case T_MNEM_strh:
      newsize = FUNC6(fragp, 5, 1);
      break;
    case T_MNEM_ldrb:
    case T_MNEM_strb:
      newsize = FUNC6(fragp, 5, 0);
      break;
    case T_MNEM_adr:
      newsize = FUNC4(fragp, sec, stretch);
      break;
    case T_MNEM_mov:
    case T_MNEM_movs:
    case T_MNEM_cmp:
    case T_MNEM_cmn:
      newsize = FUNC6(fragp, 8, 0);
      break;
    case T_MNEM_b:
      newsize = FUNC5(fragp, sec, 11, stretch);
      break;
    case T_MNEM_bcond:
      newsize = FUNC5(fragp, sec, 8, stretch);
      break;
    case T_MNEM_add_sp:
    case T_MNEM_add_pc:
      newsize = FUNC6 (fragp, 8, 2);
      break;
    case T_MNEM_inc_sp:
    case T_MNEM_dec_sp:
      newsize = FUNC6 (fragp, 7, 2);
      break;
    case T_MNEM_addi:
    case T_MNEM_addis:
    case T_MNEM_subi:
    case T_MNEM_subis:
      newsize = FUNC3 (fragp, sec);
      break;
    default:
      FUNC0();
    }

  fragp->fr_var = newsize;
  /* Freeze wide instructions that are at or before the same location as
     in the previous pass.  This avoids infinite loops.
     Don't freeze them unconditionally because targets may be artificialy
     misaligned by the expansion of preceeding frags.  */
  if (stretch <= 0 && newsize > 2)
    {
      FUNC2 (sec->owner, sec, fragp);
      FUNC1(fragp);
    }

  return newsize - oldsize;
}