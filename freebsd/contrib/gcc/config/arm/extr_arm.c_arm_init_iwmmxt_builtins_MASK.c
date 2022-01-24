#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct builtin_description {scalar_t__ name; size_t icode; int /*<<< orphan*/  code; int /*<<< orphan*/  mask; } ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_BUILTIN_GETWCX ; 
 int /*<<< orphan*/  ARM_BUILTIN_SETWCX ; 
 int /*<<< orphan*/  ARM_BUILTIN_TEXTRMSB ; 
 int /*<<< orphan*/  ARM_BUILTIN_TEXTRMSH ; 
 int /*<<< orphan*/  ARM_BUILTIN_TEXTRMSW ; 
 int /*<<< orphan*/  ARM_BUILTIN_TEXTRMUB ; 
 int /*<<< orphan*/  ARM_BUILTIN_TEXTRMUH ; 
 int /*<<< orphan*/  ARM_BUILTIN_TEXTRMUW ; 
 int /*<<< orphan*/  ARM_BUILTIN_TINSRB ; 
 int /*<<< orphan*/  ARM_BUILTIN_TINSRH ; 
 int /*<<< orphan*/  ARM_BUILTIN_TINSRW ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMIA ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMIABB ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMIABT ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMIAPH ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMIATB ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMIATT ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMOVMSKB ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMOVMSKH ; 
 int /*<<< orphan*/  ARM_BUILTIN_TMOVMSKW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WACCB ; 
 int /*<<< orphan*/  ARM_BUILTIN_WACCH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WACCW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WALIGN ; 
 int /*<<< orphan*/  ARM_BUILTIN_WMACS ; 
 int /*<<< orphan*/  ARM_BUILTIN_WMACSZ ; 
 int /*<<< orphan*/  ARM_BUILTIN_WMACU ; 
 int /*<<< orphan*/  ARM_BUILTIN_WMACUZ ; 
 int /*<<< orphan*/  ARM_BUILTIN_WPACKDSS ; 
 int /*<<< orphan*/  ARM_BUILTIN_WPACKDUS ; 
 int /*<<< orphan*/  ARM_BUILTIN_WPACKHSS ; 
 int /*<<< orphan*/  ARM_BUILTIN_WPACKHUS ; 
 int /*<<< orphan*/  ARM_BUILTIN_WPACKWSS ; 
 int /*<<< orphan*/  ARM_BUILTIN_WPACKWUS ; 
 int /*<<< orphan*/  ARM_BUILTIN_WRORD ; 
 int /*<<< orphan*/  ARM_BUILTIN_WRORDI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WRORH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WRORHI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WRORW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WRORWI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSADB ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSADBZ ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSADH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSADHZ ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSHUFH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSLLD ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSLLDI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSLLH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSLLHI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSLLW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSLLWI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRAD ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRADI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRAH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRAHI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRAW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRAWI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRLD ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRLDI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRLH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRLHI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRLW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WSRLWI ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKEHSB ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKEHSH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKEHSW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKEHUB ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKEHUH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKEHUW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKELSB ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKELSH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKELSW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKELUB ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKELUH ; 
 int /*<<< orphan*/  ARM_BUILTIN_WUNPCKELUW ; 
 int /*<<< orphan*/  ARM_BUILTIN_WZERO ; 
 size_t FUNC0 (struct builtin_description*) ; 
#define  DImode 131 
 int /*<<< orphan*/  FL_IWMMXT ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  V2SImode 130 
#define  V4HImode 129 
#define  V8QImode 128 
 struct builtin_description* bdesc_2arg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* insn_data ; 
 int /*<<< orphan*/  intHI_type_node ; 
 int /*<<< orphan*/  intQI_type_node ; 
 int /*<<< orphan*/  intSI_type_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  long_long_integer_type_node ; 
 int /*<<< orphan*/  long_long_unsigned_type_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_list_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC6 (void)
{
  const struct builtin_description * d;
  size_t i;
  tree endlink = void_list_node;

  tree V2SI_type_node = FUNC2 (intSI_type_node, V2SImode);
  tree V4HI_type_node = FUNC2 (intHI_type_node, V4HImode);
  tree V8QI_type_node = FUNC2 (intQI_type_node, V8QImode);

  tree int_ftype_int
    = FUNC1 (integer_type_node,
			   FUNC5 (NULL_TREE, integer_type_node, endlink));
  tree v8qi_ftype_v8qi_v8qi_int
    = FUNC1 (V8QI_type_node,
			   FUNC5 (NULL_TREE, V8QI_type_node,
				      FUNC5 (NULL_TREE, V8QI_type_node,
						 FUNC5 (NULL_TREE,
							    integer_type_node,
							    endlink))));
  tree v4hi_ftype_v4hi_int
    = FUNC1 (V4HI_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 endlink)));
  tree v2si_ftype_v2si_int
    = FUNC1 (V2SI_type_node,
			   FUNC5 (NULL_TREE, V2SI_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 endlink)));
  tree v2si_ftype_di_di
    = FUNC1 (V2SI_type_node,
			   FUNC5 (NULL_TREE, long_long_integer_type_node,
				      FUNC5 (NULL_TREE, long_long_integer_type_node,
						 endlink)));
  tree di_ftype_di_int
    = FUNC1 (long_long_integer_type_node,
			   FUNC5 (NULL_TREE, long_long_integer_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 endlink)));
  tree di_ftype_di_int_int
    = FUNC1 (long_long_integer_type_node,
			   FUNC5 (NULL_TREE, long_long_integer_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 FUNC5 (NULL_TREE,
							    integer_type_node,
							    endlink))));
  tree int_ftype_v8qi
    = FUNC1 (integer_type_node,
			   FUNC5 (NULL_TREE, V8QI_type_node,
				      endlink));
  tree int_ftype_v4hi
    = FUNC1 (integer_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      endlink));
  tree int_ftype_v2si
    = FUNC1 (integer_type_node,
			   FUNC5 (NULL_TREE, V2SI_type_node,
				      endlink));
  tree int_ftype_v8qi_int
    = FUNC1 (integer_type_node,
			   FUNC5 (NULL_TREE, V8QI_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 endlink)));
  tree int_ftype_v4hi_int
    = FUNC1 (integer_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 endlink)));
  tree int_ftype_v2si_int
    = FUNC1 (integer_type_node,
			   FUNC5 (NULL_TREE, V2SI_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 endlink)));
  tree v8qi_ftype_v8qi_int_int
    = FUNC1 (V8QI_type_node,
			   FUNC5 (NULL_TREE, V8QI_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 FUNC5 (NULL_TREE,
							    integer_type_node,
							    endlink))));
  tree v4hi_ftype_v4hi_int_int
    = FUNC1 (V4HI_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 FUNC5 (NULL_TREE,
							    integer_type_node,
							    endlink))));
  tree v2si_ftype_v2si_int_int
    = FUNC1 (V2SI_type_node,
			   FUNC5 (NULL_TREE, V2SI_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 FUNC5 (NULL_TREE,
							    integer_type_node,
							    endlink))));
  /* Miscellaneous.  */
  tree v8qi_ftype_v4hi_v4hi
    = FUNC1 (V8QI_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      FUNC5 (NULL_TREE, V4HI_type_node,
						 endlink)));
  tree v4hi_ftype_v2si_v2si
    = FUNC1 (V4HI_type_node,
			   FUNC5 (NULL_TREE, V2SI_type_node,
				      FUNC5 (NULL_TREE, V2SI_type_node,
						 endlink)));
  tree v2si_ftype_v4hi_v4hi
    = FUNC1 (V2SI_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      FUNC5 (NULL_TREE, V4HI_type_node,
						 endlink)));
  tree v2si_ftype_v8qi_v8qi
    = FUNC1 (V2SI_type_node,
			   FUNC5 (NULL_TREE, V8QI_type_node,
				      FUNC5 (NULL_TREE, V8QI_type_node,
						 endlink)));
  tree v4hi_ftype_v4hi_di
    = FUNC1 (V4HI_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      FUNC5 (NULL_TREE,
						 long_long_integer_type_node,
						 endlink)));
  tree v2si_ftype_v2si_di
    = FUNC1 (V2SI_type_node,
			   FUNC5 (NULL_TREE, V2SI_type_node,
				      FUNC5 (NULL_TREE,
						 long_long_integer_type_node,
						 endlink)));
  tree void_ftype_int_int
    = FUNC1 (void_type_node,
			   FUNC5 (NULL_TREE, integer_type_node,
				      FUNC5 (NULL_TREE, integer_type_node,
						 endlink)));
  tree di_ftype_void
    = FUNC1 (long_long_unsigned_type_node, endlink);
  tree di_ftype_v8qi
    = FUNC1 (long_long_integer_type_node,
			   FUNC5 (NULL_TREE, V8QI_type_node,
				      endlink));
  tree di_ftype_v4hi
    = FUNC1 (long_long_integer_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      endlink));
  tree di_ftype_v2si
    = FUNC1 (long_long_integer_type_node,
			   FUNC5 (NULL_TREE, V2SI_type_node,
				      endlink));
  tree v2si_ftype_v4hi
    = FUNC1 (V2SI_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      endlink));
  tree v4hi_ftype_v8qi
    = FUNC1 (V4HI_type_node,
			   FUNC5 (NULL_TREE, V8QI_type_node,
				      endlink));

  tree di_ftype_di_v4hi_v4hi
    = FUNC1 (long_long_unsigned_type_node,
			   FUNC5 (NULL_TREE,
				      long_long_unsigned_type_node,
				      FUNC5 (NULL_TREE, V4HI_type_node,
						 FUNC5 (NULL_TREE,
							    V4HI_type_node,
							    endlink))));

  tree di_ftype_v4hi_v4hi
    = FUNC1 (long_long_unsigned_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      FUNC5 (NULL_TREE, V4HI_type_node,
						 endlink)));

  /* Normal vector binops.  */
  tree v8qi_ftype_v8qi_v8qi
    = FUNC1 (V8QI_type_node,
			   FUNC5 (NULL_TREE, V8QI_type_node,
				      FUNC5 (NULL_TREE, V8QI_type_node,
						 endlink)));
  tree v4hi_ftype_v4hi_v4hi
    = FUNC1 (V4HI_type_node,
			   FUNC5 (NULL_TREE, V4HI_type_node,
				      FUNC5 (NULL_TREE, V4HI_type_node,
						 endlink)));
  tree v2si_ftype_v2si_v2si
    = FUNC1 (V2SI_type_node,
			   FUNC5 (NULL_TREE, V2SI_type_node,
				      FUNC5 (NULL_TREE, V2SI_type_node,
						 endlink)));
  tree di_ftype_di_di
    = FUNC1 (long_long_unsigned_type_node,
			   FUNC5 (NULL_TREE, long_long_unsigned_type_node,
				      FUNC5 (NULL_TREE,
						 long_long_unsigned_type_node,
						 endlink)));

  /* Add all builtins that are more or less simple operations on two
     operands.  */
  for (i = 0, d = bdesc_2arg; i < FUNC0 (bdesc_2arg); i++, d++)
    {
      /* Use one of the operands; the target can have a different mode for
	 mask-generating compares.  */
      enum machine_mode mode;
      tree type;

      if (d->name == 0)
	continue;

      mode = insn_data[d->icode].operand[1].mode;

      switch (mode)
	{
	case V8QImode:
	  type = v8qi_ftype_v8qi_v8qi;
	  break;
	case V4HImode:
	  type = v4hi_ftype_v4hi_v4hi;
	  break;
	case V2SImode:
	  type = v2si_ftype_v2si_v2si;
	  break;
	case DImode:
	  type = di_ftype_di_di;
	  break;

	default:
	  FUNC4 ();
	}

      FUNC3 (d->mask, d->name, type, d->code);
    }

  /* Add the remaining MMX insns with somewhat more complicated types.  */
  FUNC3 (FL_IWMMXT, "__builtin_arm_wzero", di_ftype_void, ARM_BUILTIN_WZERO);
  FUNC3 (FL_IWMMXT, "__builtin_arm_setwcx", void_ftype_int_int, ARM_BUILTIN_SETWCX);
  FUNC3 (FL_IWMMXT, "__builtin_arm_getwcx", int_ftype_int, ARM_BUILTIN_GETWCX);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wsllh", v4hi_ftype_v4hi_di, ARM_BUILTIN_WSLLH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsllw", v2si_ftype_v2si_di, ARM_BUILTIN_WSLLW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wslld", di_ftype_di_di, ARM_BUILTIN_WSLLD);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsllhi", v4hi_ftype_v4hi_int, ARM_BUILTIN_WSLLHI);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsllwi", v2si_ftype_v2si_int, ARM_BUILTIN_WSLLWI);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wslldi", di_ftype_di_int, ARM_BUILTIN_WSLLDI);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrlh", v4hi_ftype_v4hi_di, ARM_BUILTIN_WSRLH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrlw", v2si_ftype_v2si_di, ARM_BUILTIN_WSRLW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrld", di_ftype_di_di, ARM_BUILTIN_WSRLD);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrlhi", v4hi_ftype_v4hi_int, ARM_BUILTIN_WSRLHI);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrlwi", v2si_ftype_v2si_int, ARM_BUILTIN_WSRLWI);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrldi", di_ftype_di_int, ARM_BUILTIN_WSRLDI);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrah", v4hi_ftype_v4hi_di, ARM_BUILTIN_WSRAH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsraw", v2si_ftype_v2si_di, ARM_BUILTIN_WSRAW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrad", di_ftype_di_di, ARM_BUILTIN_WSRAD);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrahi", v4hi_ftype_v4hi_int, ARM_BUILTIN_WSRAHI);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsrawi", v2si_ftype_v2si_int, ARM_BUILTIN_WSRAWI);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsradi", di_ftype_di_int, ARM_BUILTIN_WSRADI);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wrorh", v4hi_ftype_v4hi_di, ARM_BUILTIN_WRORH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wrorw", v2si_ftype_v2si_di, ARM_BUILTIN_WRORW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wrord", di_ftype_di_di, ARM_BUILTIN_WRORD);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wrorhi", v4hi_ftype_v4hi_int, ARM_BUILTIN_WRORHI);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wrorwi", v2si_ftype_v2si_int, ARM_BUILTIN_WRORWI);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wrordi", di_ftype_di_int, ARM_BUILTIN_WRORDI);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wshufh", v4hi_ftype_v4hi_int, ARM_BUILTIN_WSHUFH);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wsadb", v2si_ftype_v8qi_v8qi, ARM_BUILTIN_WSADB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsadh", v2si_ftype_v4hi_v4hi, ARM_BUILTIN_WSADH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsadbz", v2si_ftype_v8qi_v8qi, ARM_BUILTIN_WSADBZ);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wsadhz", v2si_ftype_v4hi_v4hi, ARM_BUILTIN_WSADHZ);

  FUNC3 (FL_IWMMXT, "__builtin_arm_textrmsb", int_ftype_v8qi_int, ARM_BUILTIN_TEXTRMSB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_textrmsh", int_ftype_v4hi_int, ARM_BUILTIN_TEXTRMSH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_textrmsw", int_ftype_v2si_int, ARM_BUILTIN_TEXTRMSW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_textrmub", int_ftype_v8qi_int, ARM_BUILTIN_TEXTRMUB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_textrmuh", int_ftype_v4hi_int, ARM_BUILTIN_TEXTRMUH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_textrmuw", int_ftype_v2si_int, ARM_BUILTIN_TEXTRMUW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tinsrb", v8qi_ftype_v8qi_int_int, ARM_BUILTIN_TINSRB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tinsrh", v4hi_ftype_v4hi_int_int, ARM_BUILTIN_TINSRH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tinsrw", v2si_ftype_v2si_int_int, ARM_BUILTIN_TINSRW);

  FUNC3 (FL_IWMMXT, "__builtin_arm_waccb", di_ftype_v8qi, ARM_BUILTIN_WACCB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wacch", di_ftype_v4hi, ARM_BUILTIN_WACCH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_waccw", di_ftype_v2si, ARM_BUILTIN_WACCW);

  FUNC3 (FL_IWMMXT, "__builtin_arm_tmovmskb", int_ftype_v8qi, ARM_BUILTIN_TMOVMSKB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tmovmskh", int_ftype_v4hi, ARM_BUILTIN_TMOVMSKH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tmovmskw", int_ftype_v2si, ARM_BUILTIN_TMOVMSKW);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wpackhss", v8qi_ftype_v4hi_v4hi, ARM_BUILTIN_WPACKHSS);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wpackhus", v8qi_ftype_v4hi_v4hi, ARM_BUILTIN_WPACKHUS);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wpackwus", v4hi_ftype_v2si_v2si, ARM_BUILTIN_WPACKWUS);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wpackwss", v4hi_ftype_v2si_v2si, ARM_BUILTIN_WPACKWSS);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wpackdus", v2si_ftype_di_di, ARM_BUILTIN_WPACKDUS);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wpackdss", v2si_ftype_di_di, ARM_BUILTIN_WPACKDSS);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckehub", v4hi_ftype_v8qi, ARM_BUILTIN_WUNPCKEHUB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckehuh", v2si_ftype_v4hi, ARM_BUILTIN_WUNPCKEHUH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckehuw", di_ftype_v2si, ARM_BUILTIN_WUNPCKEHUW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckehsb", v4hi_ftype_v8qi, ARM_BUILTIN_WUNPCKEHSB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckehsh", v2si_ftype_v4hi, ARM_BUILTIN_WUNPCKEHSH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckehsw", di_ftype_v2si, ARM_BUILTIN_WUNPCKEHSW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckelub", v4hi_ftype_v8qi, ARM_BUILTIN_WUNPCKELUB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckeluh", v2si_ftype_v4hi, ARM_BUILTIN_WUNPCKELUH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckeluw", di_ftype_v2si, ARM_BUILTIN_WUNPCKELUW);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckelsb", v4hi_ftype_v8qi, ARM_BUILTIN_WUNPCKELSB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckelsh", v2si_ftype_v4hi, ARM_BUILTIN_WUNPCKELSH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wunpckelsw", di_ftype_v2si, ARM_BUILTIN_WUNPCKELSW);

  FUNC3 (FL_IWMMXT, "__builtin_arm_wmacs", di_ftype_di_v4hi_v4hi, ARM_BUILTIN_WMACS);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wmacsz", di_ftype_v4hi_v4hi, ARM_BUILTIN_WMACSZ);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wmacu", di_ftype_di_v4hi_v4hi, ARM_BUILTIN_WMACU);
  FUNC3 (FL_IWMMXT, "__builtin_arm_wmacuz", di_ftype_v4hi_v4hi, ARM_BUILTIN_WMACUZ);

  FUNC3 (FL_IWMMXT, "__builtin_arm_walign", v8qi_ftype_v8qi_v8qi_int, ARM_BUILTIN_WALIGN);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tmia", di_ftype_di_int_int, ARM_BUILTIN_TMIA);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tmiaph", di_ftype_di_int_int, ARM_BUILTIN_TMIAPH);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tmiabb", di_ftype_di_int_int, ARM_BUILTIN_TMIABB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tmiabt", di_ftype_di_int_int, ARM_BUILTIN_TMIABT);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tmiatb", di_ftype_di_int_int, ARM_BUILTIN_TMIATB);
  FUNC3 (FL_IWMMXT, "__builtin_arm_tmiatt", di_ftype_di_int_int, ARM_BUILTIN_TMIATT);
}