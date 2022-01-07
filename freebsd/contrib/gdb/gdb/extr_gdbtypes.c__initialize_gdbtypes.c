
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_1__ ;


struct cmd_list_element {int dummy; } ;
typedef TYPE_1__* TYPE_FLOATFORMAT ;
struct TYPE_34__ {int totalsize; } ;


 int DEPRECATED_REGISTER_GDBARCH_SWAP (int ) ;
 int TYPE_CODE_FLT ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int build_gdbtypes () ;
 int builtin_type_CORE_ADDR ;
 TYPE_1__* builtin_type_arm_ext_big ;
 TYPE_1__* builtin_type_arm_ext_littlebyte_bigword ;
 int builtin_type_bfd_vma ;
 int builtin_type_char ;
 int builtin_type_complex ;
 int builtin_type_double ;
 int builtin_type_double_complex ;
 int builtin_type_float ;
 TYPE_1__* builtin_type_i387_ext ;
 TYPE_1__* builtin_type_i960_ext ;
 TYPE_1__* builtin_type_ia64_quad_big ;
 TYPE_1__* builtin_type_ia64_quad_little ;
 TYPE_1__* builtin_type_ia64_spill_big ;
 TYPE_1__* builtin_type_ia64_spill_little ;
 TYPE_1__* builtin_type_ieee_double_big ;
 TYPE_1__* builtin_type_ieee_double_little ;
 TYPE_1__* builtin_type_ieee_double_littlebyte_bigword ;
 TYPE_1__* builtin_type_ieee_single_big ;
 TYPE_1__* builtin_type_ieee_single_little ;
 int builtin_type_int ;
 int builtin_type_int128 ;
 int builtin_type_int16 ;
 int builtin_type_int32 ;
 int builtin_type_int64 ;
 int builtin_type_int8 ;
 int builtin_type_long ;
 int builtin_type_long_double ;
 int builtin_type_long_long ;
 TYPE_1__* builtin_type_m68881_ext ;
 TYPE_1__* builtin_type_m88110_ext ;
 TYPE_1__* builtin_type_m88110_harris_ext ;
 int builtin_type_short ;
 int builtin_type_signed_char ;
 int builtin_type_string ;
 int builtin_type_uint128 ;
 int builtin_type_uint16 ;
 int builtin_type_uint32 ;
 int builtin_type_uint64 ;
 int builtin_type_uint8 ;
 int builtin_type_unsigned_char ;
 int builtin_type_unsigned_int ;
 int builtin_type_unsigned_long ;
 int builtin_type_unsigned_long_long ;
 int builtin_type_unsigned_short ;
 int builtin_type_v16_int8 ;
 int builtin_type_v16qi ;
 int builtin_type_v2_double ;
 int builtin_type_v2_float ;
 int builtin_type_v2_int32 ;
 int builtin_type_v2_int64 ;
 int builtin_type_v2si ;
 int builtin_type_v4_float ;
 int builtin_type_v4_int16 ;
 int builtin_type_v4_int32 ;
 int builtin_type_v4hi ;
 int builtin_type_v4sf ;
 int builtin_type_v4si ;
 int builtin_type_v8_int16 ;
 int builtin_type_v8_int8 ;
 int builtin_type_v8hi ;
 int builtin_type_v8qi ;
 int builtin_type_vec128 ;
 int builtin_type_vec128i ;
 int builtin_type_void ;
 int builtin_type_void_data_ptr ;
 int builtin_type_void_func_ptr ;
 int deprecated_register_gdbarch_swap (int *,int ,int (*) ()) ;
 TYPE_1__ floatformat_arm_ext_big ;
 TYPE_1__ floatformat_arm_ext_littlebyte_bigword ;
 TYPE_1__ floatformat_i387_ext ;
 TYPE_1__ floatformat_i960_ext ;
 TYPE_1__ floatformat_ia64_quad_big ;
 TYPE_1__ floatformat_ia64_quad_little ;
 TYPE_1__ floatformat_ia64_spill_big ;
 TYPE_1__ floatformat_ia64_spill_little ;
 TYPE_1__ floatformat_ieee_double_big ;
 TYPE_1__ floatformat_ieee_double_little ;
 TYPE_1__ floatformat_ieee_double_littlebyte_bigword ;
 TYPE_1__ floatformat_ieee_single_big ;
 TYPE_1__ floatformat_ieee_single_little ;
 TYPE_1__ floatformat_m68881_ext ;
 TYPE_1__ floatformat_m88110_ext ;
 TYPE_1__ floatformat_m88110_harris_ext ;
 void* init_type (int ,int,int ,char*,int *) ;
 int no_class ;
 int overload_debug ;
 int setdebuglist ;
 int showdebuglist ;
 int var_zinteger ;

void
_initialize_gdbtypes (void)
{
  struct cmd_list_element *c;
  build_gdbtypes ();




  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_void);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_char);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_short);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_int);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_long);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_long_long);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_signed_char);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_unsigned_char);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_unsigned_short);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_unsigned_int);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_unsigned_long);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_unsigned_long_long);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_float);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_double);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_long_double);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_complex);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_double_complex);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_string);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_int8);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_uint8);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_int16);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_uint16);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_int32);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_uint32);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_int64);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_uint64);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_int128);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_uint128);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v4sf);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v4si);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v16qi);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v8qi);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v8hi);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v4hi);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v2si);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v2_double);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v4_float);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v2_int64);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v4_int32);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v8_int16);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v16_int8);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v2_float);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v2_int32);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v8_int8);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_v4_int16);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_vec128);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_vec128i);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_void_data_ptr);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_void_func_ptr);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_CORE_ADDR);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_bfd_vma);
  deprecated_register_gdbarch_swap (((void*)0), 0, build_gdbtypes);



  builtin_type_ieee_single_big =
    init_type (TYPE_CODE_FLT, floatformat_ieee_single_big.totalsize / 8,
        0, "builtin_type_ieee_single_big", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ieee_single_big) = &floatformat_ieee_single_big;
  builtin_type_ieee_single_little =
    init_type (TYPE_CODE_FLT, floatformat_ieee_single_little.totalsize / 8,
        0, "builtin_type_ieee_single_little", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ieee_single_little) = &floatformat_ieee_single_little;
  builtin_type_ieee_double_big =
    init_type (TYPE_CODE_FLT, floatformat_ieee_double_big.totalsize / 8,
        0, "builtin_type_ieee_double_big", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ieee_double_big) = &floatformat_ieee_double_big;
  builtin_type_ieee_double_little =
    init_type (TYPE_CODE_FLT, floatformat_ieee_double_little.totalsize / 8,
        0, "builtin_type_ieee_double_little", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ieee_double_little) = &floatformat_ieee_double_little;
  builtin_type_ieee_double_littlebyte_bigword =
    init_type (TYPE_CODE_FLT, floatformat_ieee_double_littlebyte_bigword.totalsize / 8,
        0, "builtin_type_ieee_double_littlebyte_bigword", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ieee_double_littlebyte_bigword) = &floatformat_ieee_double_littlebyte_bigword;
  builtin_type_i387_ext =
    init_type (TYPE_CODE_FLT, floatformat_i387_ext.totalsize / 8,
        0, "builtin_type_i387_ext", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_i387_ext) = &floatformat_i387_ext;
  builtin_type_m68881_ext =
    init_type (TYPE_CODE_FLT, floatformat_m68881_ext.totalsize / 8,
        0, "builtin_type_m68881_ext", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_m68881_ext) = &floatformat_m68881_ext;
  builtin_type_i960_ext =
    init_type (TYPE_CODE_FLT, floatformat_i960_ext.totalsize / 8,
        0, "builtin_type_i960_ext", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_i960_ext) = &floatformat_i960_ext;
  builtin_type_m88110_ext =
    init_type (TYPE_CODE_FLT, floatformat_m88110_ext.totalsize / 8,
        0, "builtin_type_m88110_ext", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_m88110_ext) = &floatformat_m88110_ext;
  builtin_type_m88110_harris_ext =
    init_type (TYPE_CODE_FLT, floatformat_m88110_harris_ext.totalsize / 8,
        0, "builtin_type_m88110_harris_ext", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_m88110_harris_ext) = &floatformat_m88110_harris_ext;
  builtin_type_arm_ext_big =
    init_type (TYPE_CODE_FLT, floatformat_arm_ext_big.totalsize / 8,
        0, "builtin_type_arm_ext_big", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_arm_ext_big) = &floatformat_arm_ext_big;
  builtin_type_arm_ext_littlebyte_bigword =
    init_type (TYPE_CODE_FLT, floatformat_arm_ext_littlebyte_bigword.totalsize / 8,
        0, "builtin_type_arm_ext_littlebyte_bigword", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_arm_ext_littlebyte_bigword) = &floatformat_arm_ext_littlebyte_bigword;
  builtin_type_ia64_spill_big =
    init_type (TYPE_CODE_FLT, floatformat_ia64_spill_big.totalsize / 8,
        0, "builtin_type_ia64_spill_big", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ia64_spill_big) = &floatformat_ia64_spill_big;
  builtin_type_ia64_spill_little =
    init_type (TYPE_CODE_FLT, floatformat_ia64_spill_little.totalsize / 8,
        0, "builtin_type_ia64_spill_little", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ia64_spill_little) = &floatformat_ia64_spill_little;
  builtin_type_ia64_quad_big =
    init_type (TYPE_CODE_FLT, floatformat_ia64_quad_big.totalsize / 8,
        0, "builtin_type_ia64_quad_big", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ia64_quad_big) = &floatformat_ia64_quad_big;
  builtin_type_ia64_quad_little =
    init_type (TYPE_CODE_FLT, floatformat_ia64_quad_little.totalsize / 8,
        0, "builtin_type_ia64_quad_little", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ia64_quad_little) = &floatformat_ia64_quad_little;

  add_show_from_set (
       add_set_cmd ("overload", no_class, var_zinteger, (char *) &overload_debug,
      "Set debugging of C++ overloading.\n			  When enabled, ranking of the functions\n			  is displayed.", &setdebuglist),


       &showdebuglist);
}
