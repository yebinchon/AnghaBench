
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
typedef void* TYPE_TARGET_TYPE ;


 int TARGET_CHAR_BIT ;
 int TARGET_DOUBLE_BIT ;
 int TARGET_FLOAT_BIT ;
 int TARGET_INT_BIT ;
 int TARGET_LONG_DOUBLE_BIT ;
 int TARGET_SHORT_BIT ;
 int TYPE_CODE_BOOL ;
 int TYPE_CODE_COMPLEX ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_VOID ;
 int TYPE_FLAG_UNSIGNED ;
 void* builtin_type_f_character ;
 void* builtin_type_f_complex_s16 ;
 void* builtin_type_f_complex_s32 ;
 void* builtin_type_f_complex_s8 ;
 void* builtin_type_f_integer ;
 void* builtin_type_f_integer_s2 ;
 void* builtin_type_f_logical ;
 void* builtin_type_f_logical_s1 ;
 void* builtin_type_f_logical_s2 ;
 void* builtin_type_f_real ;
 void* builtin_type_f_real_s16 ;
 void* builtin_type_f_real_s8 ;
 void* builtin_type_f_void ;
 void* init_type (int ,int,int ,char*,struct objfile*) ;

__attribute__((used)) static void
build_fortran_types (void)
{
  builtin_type_f_void =
    init_type (TYPE_CODE_VOID, 1,
        0,
        "VOID", (struct objfile *) ((void*)0));

  builtin_type_f_character =
    init_type (TYPE_CODE_INT, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        0,
        "character", (struct objfile *) ((void*)0));

  builtin_type_f_logical_s1 =
    init_type (TYPE_CODE_BOOL, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "logical*1", (struct objfile *) ((void*)0));

  builtin_type_f_integer_s2 =
    init_type (TYPE_CODE_INT, TARGET_SHORT_BIT / TARGET_CHAR_BIT,
        0,
        "integer*2", (struct objfile *) ((void*)0));

  builtin_type_f_logical_s2 =
    init_type (TYPE_CODE_BOOL, TARGET_SHORT_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "logical*2", (struct objfile *) ((void*)0));

  builtin_type_f_integer =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
        0,
        "integer", (struct objfile *) ((void*)0));

  builtin_type_f_logical =
    init_type (TYPE_CODE_BOOL, TARGET_INT_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "logical*4", (struct objfile *) ((void*)0));

  builtin_type_f_real =
    init_type (TYPE_CODE_FLT, TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
        0,
        "real", (struct objfile *) ((void*)0));

  builtin_type_f_real_s8 =
    init_type (TYPE_CODE_FLT, TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "real*8", (struct objfile *) ((void*)0));

  builtin_type_f_real_s16 =
    init_type (TYPE_CODE_FLT, TARGET_LONG_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "real*16", (struct objfile *) ((void*)0));

  builtin_type_f_complex_s8 =
    init_type (TYPE_CODE_COMPLEX, 2 * TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
        0,
        "complex*8", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (builtin_type_f_complex_s8) = builtin_type_f_real;

  builtin_type_f_complex_s16 =
    init_type (TYPE_CODE_COMPLEX, 2 * TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "complex*16", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (builtin_type_f_complex_s16) = builtin_type_f_real_s8;




  builtin_type_f_complex_s32 =
    init_type (TYPE_CODE_COMPLEX, 2 * TARGET_LONG_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "complex*32", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (builtin_type_f_complex_s32) = builtin_type_f_real_s16;
}
