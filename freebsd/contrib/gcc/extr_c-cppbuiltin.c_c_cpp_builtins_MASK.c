#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_2__ {scalar_t__ handle_pragma_extern_prefix; scalar_t__ handle_pragma_redefine_extname; } ;

/* Variables and functions */
 int POINTER_SIZE ; 
 int /*<<< orphan*/  REGISTER_PREFIX ; 
 scalar_t__ SUPPORTS_ONE_ONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ TARGET_DECLSPEC ; 
 int TARGET_DEC_EVAL_METHOD ; 
 int TARGET_FLT_EVAL_METHOD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ USING_SJLJ_EXCEPTIONS ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  char_type_node ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  dfloat128_type_node ; 
 int /*<<< orphan*/  dfloat32_type_node ; 
 int /*<<< orphan*/  dfloat64_type_node ; 
 int /*<<< orphan*/  double_type_node ; 
 scalar_t__ FUNC18 () ; 
 int flag_abi_version ; 
 scalar_t__ flag_blocks ; 
 scalar_t__ flag_exceptions ; 
 scalar_t__ flag_finite_math_only ; 
 scalar_t__ flag_gnu89_inline ; 
 scalar_t__ flag_iso ; 
 scalar_t__ flag_mudflap ; 
 scalar_t__ flag_next_runtime ; 
 scalar_t__ flag_openmp ; 
 int flag_pic ; 
 scalar_t__ flag_really_no_inline ; 
 scalar_t__ flag_signaling_nans ; 
 int /*<<< orphan*/  flag_signed_char ; 
 scalar_t__ flag_single_precision_constant ; 
 int flag_stack_protect ; 
 scalar_t__ flag_undef ; 
 scalar_t__ flag_weak ; 
 int /*<<< orphan*/  float_type_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  long_double_type_node ; 
 int /*<<< orphan*/  long_integer_type_node ; 
 int /*<<< orphan*/  long_long_integer_type_node ; 
 scalar_t__ optimize ; 
 scalar_t__ optimize_size ; 
 int /*<<< orphan*/  short_integer_type_node ; 
 int /*<<< orphan*/  signed_char_type_node ; 
 TYPE_1__ targetm ; 
 int /*<<< orphan*/  user_label_prefix ; 
 int /*<<< orphan*/  version_string ; 
 scalar_t__ warn_deprecated ; 
 int /*<<< orphan*/  wchar_type_node ; 

void
FUNC19 (cpp_reader *pfile)
{
  /* -undef turns off target-specific built-ins.  */
  if (flag_undef)
    return;

  FUNC17 ();

  /* For stddef.h.  They require macros defined in c-common.c.  */
  FUNC15 ();

  if (FUNC13 ())
    {
      if (flag_weak && SUPPORTS_ONE_ONLY)
	FUNC16 (pfile, "__GXX_WEAK__=1");
      else
	FUNC16 (pfile, "__GXX_WEAK__=0");
      if (warn_deprecated)
	FUNC16 (pfile, "__DEPRECATED");
    }
  /* Note that we define this for C as well, so that we know if
     __attribute__((cleanup)) will interface with EH.  */
  if (flag_exceptions)
    FUNC16 (pfile, "__EXCEPTIONS");

  /* Represents the C++ ABI version, always defined so it can be used while
     preprocessing C and assembler.  */
  if (flag_abi_version == 0)
    /* Use a very large value so that:

	 #if __GXX_ABI_VERSION >= <value for version X>

       will work whether the user explicitly says "-fabi-version=x" or
       "-fabi-version=0".  Do not use INT_MAX because that will be
       different from system to system.  */
    FUNC11 ("__GXX_ABI_VERSION", 999999);
  else if (flag_abi_version == 1)
    /* Due to a historical accident, this version had the value
       "102".  */
    FUNC11 ("__GXX_ABI_VERSION", 102);
  else
    /* Newer versions have values 1002, 1003, ....  */
    FUNC11 ("__GXX_ABI_VERSION",
				   1000 + flag_abi_version);

  /* libgcc needs to know this.  */
  if (USING_SJLJ_EXCEPTIONS)
    FUNC16 (pfile, "__USING_SJLJ_EXCEPTIONS__");

  /* limits.h needs to know these.  */
  FUNC9 ("__SCHAR_MAX__", signed_char_type_node, 0);
  FUNC9 ("__SHRT_MAX__", short_integer_type_node, 0);
  FUNC9 ("__INT_MAX__", integer_type_node, 0);
  FUNC9 ("__LONG_MAX__", long_integer_type_node, 1);
  FUNC9 ("__LONG_LONG_MAX__", long_long_integer_type_node, 2);
  FUNC9 ("__WCHAR_MAX__", wchar_type_node, 0);

  FUNC10 ("__CHAR_BIT__", char_type_node);

  /* stdint.h (eventually) and the testsuite need to know these.  */
  FUNC8 ();

  /* float.h needs to know these.  */

  FUNC11 ("__FLT_EVAL_METHOD__",
				 TARGET_FLT_EVAL_METHOD);

  /* And decfloat.h needs this.  */
  FUNC11 ("__DEC_EVAL_METHOD__",
                                 TARGET_DEC_EVAL_METHOD);

  FUNC7 ("FLT", "F", "%s", float_type_node);
  /* Cast the double precision constants when single precision constants are
     specified. The correct result is computed by the compiler when using 
     macros that include a cast. This has the side-effect of making the value 
     unusable in const expressions. */
  if (flag_single_precision_constant)
    FUNC7 ("DBL", "L", "((double)%s)", double_type_node);
  else
    FUNC7 ("DBL", "", "%s", double_type_node);
  FUNC7 ("LDBL", "L", "%s", long_double_type_node);

  /* For decfloat.h.  */
  FUNC6 ("DEC32", "DF", dfloat32_type_node);
  FUNC6 ("DEC64", "DD", dfloat64_type_node);
  FUNC6 ("DEC128", "DL", dfloat128_type_node);

  /* For use in assembly language.  */
  FUNC12 ("__REGISTER_PREFIX__", REGISTER_PREFIX, 0);
  FUNC12 ("__USER_LABEL_PREFIX__", user_label_prefix, 0);

  /* Misc.  */
  FUNC12 ("__VERSION__", version_string, 1);

  if (flag_gnu89_inline)
    FUNC16 (pfile, "__GNUC_GNU_INLINE__");
  else
    FUNC16 (pfile, "__GNUC_STDC_INLINE__");

  /* Definitions for LP64 model.  */
  if (FUNC3 (long_integer_type_node) == 64
      && POINTER_SIZE == 64
      && FUNC3 (integer_type_node) == 32)
    {
      FUNC16 (pfile, "_LP64");
      FUNC16 (pfile, "__LP64__");
    }

  /* Other target-independent built-ins determined by command-line
     options.  */
  /* APPLE LOCAL begin blocks */
  /* APPLE LOCAL radar 5868913 */
  if (flag_blocks)
    {
      FUNC16 (pfile, "__block=__attribute__((__blocks__(byref)))");
      FUNC16 (pfile, "__BLOCKS__=1");
    }
  /* APPLE LOCAL end blocks */
  if (optimize_size)
    FUNC16 (pfile, "__OPTIMIZE_SIZE__");
  if (optimize)
    FUNC16 (pfile, "__OPTIMIZE__");

  if (FUNC18 ())
    FUNC16 (pfile, "__FAST_MATH__");
  if (flag_really_no_inline)
    FUNC16 (pfile, "__NO_INLINE__");
  if (flag_signaling_nans)
    FUNC16 (pfile, "__SUPPORT_SNAN__");
  if (flag_finite_math_only)
    FUNC16 (pfile, "__FINITE_MATH_ONLY__=1");
  else
    FUNC16 (pfile, "__FINITE_MATH_ONLY__=0");
  if (flag_pic)
    {
      FUNC11 ("__pic__", flag_pic);
      FUNC11 ("__PIC__", flag_pic);
    }

  if (flag_iso)
    FUNC16 (pfile, "__STRICT_ANSI__");

  if (!flag_signed_char)
    FUNC16 (pfile, "__CHAR_UNSIGNED__");

  if (FUNC13 () && FUNC4 (wchar_type_node))
    FUNC16 (pfile, "__WCHAR_UNSIGNED__");

  /* Make the choice of ObjC runtime visible to source code.  */
  if (FUNC14 () && flag_next_runtime)
    FUNC16 (pfile, "__NEXT_RUNTIME__");

  /* Show the availability of some target pragmas.  */
  if (flag_mudflap || targetm.handle_pragma_redefine_extname)
    FUNC16 (pfile, "__PRAGMA_REDEFINE_EXTNAME");

  if (targetm.handle_pragma_extern_prefix)
    FUNC16 (pfile, "__PRAGMA_EXTERN_PREFIX");

  /* Make the choice of the stack protector runtime visible to source code.
     The macro names and values here were chosen for compatibility with an
     earlier implementation, i.e. ProPolice.  */
  if (flag_stack_protect == 3)
    FUNC16 (pfile, "__SSP_STRONG__=3");
  else if (flag_stack_protect == 2)
    FUNC16 (pfile, "__SSP_ALL__=2");
  else if (flag_stack_protect == 1)
    FUNC16 (pfile, "__SSP__=1");

  if (flag_openmp)
    FUNC16 (pfile, "_OPENMP=200505");

  /* A straightforward target hook doesn't work, because of problems
     linking that hook's body when part of non-C front ends.  */
# define preprocessing_asm_p() (cpp_get_options (pfile)->lang == CLK_ASM)
# define preprocessing_trad_p() (cpp_get_options (pfile)->traditional)
# define builtin_define(TXT) cpp_define (pfile, TXT)
# define builtin_assert(TXT) cpp_assert (pfile, TXT)
  FUNC0 ();
  FUNC2 ();
  FUNC1 ();

  /* Support the __declspec keyword by turning them into attributes.
     Note that the current way we do this may result in a collision
     with predefined attributes later on.  This can be solved by using
     one attribute, say __declspec__, and passing args to it.  The
     problem with that approach is that args are not accumulated: each
     new appearance would clobber any existing args.  */
  if (TARGET_DECLSPEC)
    builtin_define ("__declspec(x)=__attribute__((x))");
}