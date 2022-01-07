
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int DEPRECATED_REGISTER_GDBARCH_SWAP (int ) ;
 int TARGET_CHAR_BIT ;
 int TYPE_CODE_STRING ;
 int add_language (int *) ;
 int build_fortran_types () ;
 int builtin_type_f_character ;
 int builtin_type_f_complex_s16 ;
 int builtin_type_f_complex_s32 ;
 int builtin_type_f_complex_s8 ;
 int builtin_type_f_integer ;
 int builtin_type_f_integer_s2 ;
 int builtin_type_f_logical ;
 int builtin_type_f_logical_s1 ;
 int builtin_type_f_logical_s2 ;
 int builtin_type_f_real ;
 int builtin_type_f_real_s16 ;
 int builtin_type_f_real_s8 ;
 int builtin_type_f_void ;
 int builtin_type_string ;
 int deprecated_register_gdbarch_swap (int *,int ,int (*) ()) ;
 int f_language_defn ;
 int init_type (int ,int,int ,char*,struct objfile*) ;

void
_initialize_f_language (void)
{
  build_fortran_types ();

  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_character);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_logical);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_logical_s1);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_logical_s2);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_integer);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_integer_s2);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_real);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_real_s8);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_real_s16);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_complex_s8);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_complex_s16);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_complex_s32);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_f_void);
  DEPRECATED_REGISTER_GDBARCH_SWAP (builtin_type_string);
  deprecated_register_gdbarch_swap (((void*)0), 0, build_fortran_types);

  builtin_type_string =
    init_type (TYPE_CODE_STRING, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        0,
        "character string", (struct objfile *) ((void*)0));

  add_language (&f_language_defn);
}
