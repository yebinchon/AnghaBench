
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_2__ {scalar_t__ handle_pragma_extern_prefix; scalar_t__ handle_pragma_redefine_extname; } ;


 int POINTER_SIZE ;
 int REGISTER_PREFIX ;
 scalar_t__ SUPPORTS_ONE_ONLY ;
 int TARGET_CPU_CPP_BUILTINS () ;
 scalar_t__ TARGET_DECLSPEC ;
 int TARGET_DEC_EVAL_METHOD ;
 int TARGET_FLT_EVAL_METHOD ;
 int TARGET_OBJFMT_CPP_BUILTINS () ;
 int TARGET_OS_CPP_BUILTINS () ;
 int TYPE_PRECISION (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 scalar_t__ USING_SJLJ_EXCEPTIONS ;
 int builtin_define (char*) ;
 int builtin_define_decimal_float_constants (char*,char*,int ) ;
 int builtin_define_float_constants (char*,char*,char*,int ) ;
 int builtin_define_stdint_macros () ;
 int builtin_define_type_max (char*,int ,int) ;
 int builtin_define_type_precision (char*,int ) ;
 int builtin_define_with_int_value (char*,int) ;
 int builtin_define_with_value (char*,int ,int) ;
 scalar_t__ c_dialect_cxx () ;
 scalar_t__ c_dialect_objc () ;
 int c_stddef_cpp_builtins () ;
 int char_type_node ;
 int cpp_define (int *,char*) ;
 int define__GNUC__ () ;
 int dfloat128_type_node ;
 int dfloat32_type_node ;
 int dfloat64_type_node ;
 int double_type_node ;
 scalar_t__ fast_math_flags_set_p () ;
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
 int flag_signed_char ;
 scalar_t__ flag_single_precision_constant ;
 int flag_stack_protect ;
 scalar_t__ flag_undef ;
 scalar_t__ flag_weak ;
 int float_type_node ;
 int integer_type_node ;
 int long_double_type_node ;
 int long_integer_type_node ;
 int long_long_integer_type_node ;
 scalar_t__ optimize ;
 scalar_t__ optimize_size ;
 int short_integer_type_node ;
 int signed_char_type_node ;
 TYPE_1__ targetm ;
 int user_label_prefix ;
 int version_string ;
 scalar_t__ warn_deprecated ;
 int wchar_type_node ;

void
c_cpp_builtins (cpp_reader *pfile)
{

  if (flag_undef)
    return;

  define__GNUC__ ();


  c_stddef_cpp_builtins ();

  if (c_dialect_cxx ())
    {
      if (flag_weak && SUPPORTS_ONE_ONLY)
 cpp_define (pfile, "__GXX_WEAK__=1");
      else
 cpp_define (pfile, "__GXX_WEAK__=0");
      if (warn_deprecated)
 cpp_define (pfile, "__DEPRECATED");
    }


  if (flag_exceptions)
    cpp_define (pfile, "__EXCEPTIONS");



  if (flag_abi_version == 0)







    builtin_define_with_int_value ("__GXX_ABI_VERSION", 999999);
  else if (flag_abi_version == 1)


    builtin_define_with_int_value ("__GXX_ABI_VERSION", 102);
  else

    builtin_define_with_int_value ("__GXX_ABI_VERSION",
       1000 + flag_abi_version);


  if (USING_SJLJ_EXCEPTIONS)
    cpp_define (pfile, "__USING_SJLJ_EXCEPTIONS__");


  builtin_define_type_max ("__SCHAR_MAX__", signed_char_type_node, 0);
  builtin_define_type_max ("__SHRT_MAX__", short_integer_type_node, 0);
  builtin_define_type_max ("__INT_MAX__", integer_type_node, 0);
  builtin_define_type_max ("__LONG_MAX__", long_integer_type_node, 1);
  builtin_define_type_max ("__LONG_LONG_MAX__", long_long_integer_type_node, 2);
  builtin_define_type_max ("__WCHAR_MAX__", wchar_type_node, 0);

  builtin_define_type_precision ("__CHAR_BIT__", char_type_node);


  builtin_define_stdint_macros ();



  builtin_define_with_int_value ("__FLT_EVAL_METHOD__",
     TARGET_FLT_EVAL_METHOD);


  builtin_define_with_int_value ("__DEC_EVAL_METHOD__",
                                 TARGET_DEC_EVAL_METHOD);

  builtin_define_float_constants ("FLT", "F", "%s", float_type_node);




  if (flag_single_precision_constant)
    builtin_define_float_constants ("DBL", "L", "((double)%s)", double_type_node);
  else
    builtin_define_float_constants ("DBL", "", "%s", double_type_node);
  builtin_define_float_constants ("LDBL", "L", "%s", long_double_type_node);


  builtin_define_decimal_float_constants ("DEC32", "DF", dfloat32_type_node);
  builtin_define_decimal_float_constants ("DEC64", "DD", dfloat64_type_node);
  builtin_define_decimal_float_constants ("DEC128", "DL", dfloat128_type_node);


  builtin_define_with_value ("__REGISTER_PREFIX__", REGISTER_PREFIX, 0);
  builtin_define_with_value ("__USER_LABEL_PREFIX__", user_label_prefix, 0);


  builtin_define_with_value ("__VERSION__", version_string, 1);

  if (flag_gnu89_inline)
    cpp_define (pfile, "__GNUC_GNU_INLINE__");
  else
    cpp_define (pfile, "__GNUC_STDC_INLINE__");


  if (TYPE_PRECISION (long_integer_type_node) == 64
      && POINTER_SIZE == 64
      && TYPE_PRECISION (integer_type_node) == 32)
    {
      cpp_define (pfile, "_LP64");
      cpp_define (pfile, "__LP64__");
    }





  if (flag_blocks)
    {
      cpp_define (pfile, "__block=__attribute__((__blocks__(byref)))");
      cpp_define (pfile, "__BLOCKS__=1");
    }

  if (optimize_size)
    cpp_define (pfile, "__OPTIMIZE_SIZE__");
  if (optimize)
    cpp_define (pfile, "__OPTIMIZE__");

  if (fast_math_flags_set_p ())
    cpp_define (pfile, "__FAST_MATH__");
  if (flag_really_no_inline)
    cpp_define (pfile, "__NO_INLINE__");
  if (flag_signaling_nans)
    cpp_define (pfile, "__SUPPORT_SNAN__");
  if (flag_finite_math_only)
    cpp_define (pfile, "__FINITE_MATH_ONLY__=1");
  else
    cpp_define (pfile, "__FINITE_MATH_ONLY__=0");
  if (flag_pic)
    {
      builtin_define_with_int_value ("__pic__", flag_pic);
      builtin_define_with_int_value ("__PIC__", flag_pic);
    }

  if (flag_iso)
    cpp_define (pfile, "__STRICT_ANSI__");

  if (!flag_signed_char)
    cpp_define (pfile, "__CHAR_UNSIGNED__");

  if (c_dialect_cxx () && TYPE_UNSIGNED (wchar_type_node))
    cpp_define (pfile, "__WCHAR_UNSIGNED__");


  if (c_dialect_objc () && flag_next_runtime)
    cpp_define (pfile, "__NEXT_RUNTIME__");


  if (flag_mudflap || targetm.handle_pragma_redefine_extname)
    cpp_define (pfile, "__PRAGMA_REDEFINE_EXTNAME");

  if (targetm.handle_pragma_extern_prefix)
    cpp_define (pfile, "__PRAGMA_EXTERN_PREFIX");




  if (flag_stack_protect == 3)
    cpp_define (pfile, "__SSP_STRONG__=3");
  else if (flag_stack_protect == 2)
    cpp_define (pfile, "__SSP_ALL__=2");
  else if (flag_stack_protect == 1)
    cpp_define (pfile, "__SSP__=1");

  if (flag_openmp)
    cpp_define (pfile, "_OPENMP=200505");







  TARGET_CPU_CPP_BUILTINS ();
  TARGET_OS_CPP_BUILTINS ();
  TARGET_OBJFMT_CPP_BUILTINS ();







  if (TARGET_DECLSPEC)
    cpp_define (pfile, "__declspec(x)=__attribute__((x))");
}
