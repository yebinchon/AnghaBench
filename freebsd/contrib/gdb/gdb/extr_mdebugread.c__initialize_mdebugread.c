
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
typedef void* TYPE_TARGET_TYPE ;


 int HOST_CHAR_BIT ;
 int TARGET_CHAR_BIT ;
 int TARGET_DOUBLE_BIT ;
 int TARGET_FLOAT_BIT ;
 int TARGET_INT_BIT ;
 int TYPE_CODE_COMPLEX ;
 int TYPE_CODE_ERROR ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_FUNC ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_PTR ;
 int TYPE_CODE_STRING ;
 int TYPE_CODE_VOID ;
 int TYPE_FLAG_UNSIGNED ;
 void* init_type (int ,int,int ,char*,struct objfile*) ;
 void* mdebug_type_adr_32 ;
 void* mdebug_type_adr_64 ;
 void* mdebug_type_char ;
 void* mdebug_type_complex ;
 void* mdebug_type_double ;
 void* mdebug_type_double_complex ;
 void* mdebug_type_fixed_dec ;
 void* mdebug_type_float ;
 void* mdebug_type_float_dec ;
 void* mdebug_type_int ;
 void* mdebug_type_int_32 ;
 void* mdebug_type_int_64 ;
 void* mdebug_type_long_32 ;
 void* mdebug_type_long_64 ;
 void* mdebug_type_long_long_64 ;
 void* mdebug_type_short ;
 void* mdebug_type_string ;
 void* mdebug_type_unsigned_char ;
 void* mdebug_type_unsigned_int_32 ;
 void* mdebug_type_unsigned_int_64 ;
 void* mdebug_type_unsigned_long_32 ;
 void* mdebug_type_unsigned_long_64 ;
 void* mdebug_type_unsigned_long_long_64 ;
 void* mdebug_type_unsigned_short ;
 void* mdebug_type_void ;
 void* nodebug_func_symbol_type ;
 void* nodebug_var_symbol_type ;

void
_initialize_mdebugread (void)
{
  mdebug_type_void =
    init_type (TYPE_CODE_VOID, 1,
        0,
        "void", (struct objfile *) ((void*)0));
  mdebug_type_char =
    init_type (TYPE_CODE_INT, 1,
        0,
        "char", (struct objfile *) ((void*)0));
  mdebug_type_unsigned_char =
    init_type (TYPE_CODE_INT, 1,
        TYPE_FLAG_UNSIGNED,
        "unsigned char", (struct objfile *) ((void*)0));
  mdebug_type_short =
    init_type (TYPE_CODE_INT, 2,
        0,
        "short", (struct objfile *) ((void*)0));
  mdebug_type_unsigned_short =
    init_type (TYPE_CODE_INT, 2,
        TYPE_FLAG_UNSIGNED,
        "unsigned short", (struct objfile *) ((void*)0));
  mdebug_type_int_32 =
    init_type (TYPE_CODE_INT, 4,
        0,
        "int", (struct objfile *) ((void*)0));
  mdebug_type_unsigned_int_32 =
    init_type (TYPE_CODE_INT, 4,
        TYPE_FLAG_UNSIGNED,
        "unsigned int", (struct objfile *) ((void*)0));
  mdebug_type_int_64 =
    init_type (TYPE_CODE_INT, 8,
        0,
        "int", (struct objfile *) ((void*)0));
  mdebug_type_unsigned_int_64 =
    init_type (TYPE_CODE_INT, 8,
        TYPE_FLAG_UNSIGNED,
        "unsigned int", (struct objfile *) ((void*)0));
  mdebug_type_long_32 =
    init_type (TYPE_CODE_INT, 4,
        0,
        "long", (struct objfile *) ((void*)0));
  mdebug_type_unsigned_long_32 =
    init_type (TYPE_CODE_INT, 4,
        TYPE_FLAG_UNSIGNED,
        "unsigned long", (struct objfile *) ((void*)0));
  mdebug_type_long_64 =
    init_type (TYPE_CODE_INT, 8,
        0,
        "long", (struct objfile *) ((void*)0));
  mdebug_type_unsigned_long_64 =
    init_type (TYPE_CODE_INT, 8,
        TYPE_FLAG_UNSIGNED,
        "unsigned long", (struct objfile *) ((void*)0));
  mdebug_type_long_long_64 =
    init_type (TYPE_CODE_INT, 8,
        0,
        "long long", (struct objfile *) ((void*)0));
  mdebug_type_unsigned_long_long_64 =
    init_type (TYPE_CODE_INT, 8,
        TYPE_FLAG_UNSIGNED,
        "unsigned long long", (struct objfile *) ((void*)0));
  mdebug_type_adr_32 =
    init_type (TYPE_CODE_PTR, 4,
        TYPE_FLAG_UNSIGNED,
        "adr_32", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (mdebug_type_adr_32) = mdebug_type_void;
  mdebug_type_adr_64 =
    init_type (TYPE_CODE_PTR, 8,
        TYPE_FLAG_UNSIGNED,
        "adr_64", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (mdebug_type_adr_64) = mdebug_type_void;
  mdebug_type_float =
    init_type (TYPE_CODE_FLT, TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
        0,
        "float", (struct objfile *) ((void*)0));
  mdebug_type_double =
    init_type (TYPE_CODE_FLT, TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "double", (struct objfile *) ((void*)0));
  mdebug_type_complex =
    init_type (TYPE_CODE_COMPLEX, 2 * TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
        0,
        "complex", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (mdebug_type_complex) = mdebug_type_float;
  mdebug_type_double_complex =
    init_type (TYPE_CODE_COMPLEX, 2 * TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "double complex", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (mdebug_type_double_complex) = mdebug_type_double;



  mdebug_type_string =
    init_type (TYPE_CODE_STRING,
        TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        0, "string",
        (struct objfile *) ((void*)0));




  mdebug_type_fixed_dec =
    init_type (TYPE_CODE_INT,
        TARGET_INT_BIT / TARGET_CHAR_BIT,
        0, "fixed decimal",
        (struct objfile *) ((void*)0));

  mdebug_type_float_dec =
    init_type (TYPE_CODE_ERROR,
        TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
        0, "floating decimal",
        (struct objfile *) ((void*)0));

  nodebug_func_symbol_type = init_type (TYPE_CODE_FUNC, 1, 0,
     "<function, no debug info>", ((void*)0));
  TYPE_TARGET_TYPE (nodebug_func_symbol_type) = mdebug_type_int;
  nodebug_var_symbol_type =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / HOST_CHAR_BIT, 0,
        "<variable, no debug info>", ((void*)0));
}
