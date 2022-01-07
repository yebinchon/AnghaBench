
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
typedef void* TYPE_TARGET_TYPE ;
typedef void* TYPE_FLOATFORMAT ;


 int TARGET_ADDR_BIT ;
 int TARGET_BFD_VMA_BIT ;
 int TARGET_CHAR_BIT ;
 scalar_t__ TARGET_CHAR_SIGNED ;
 int TARGET_DOUBLE_BIT ;
 void* TARGET_DOUBLE_FORMAT ;
 int TARGET_FLOAT_BIT ;
 void* TARGET_FLOAT_FORMAT ;
 int TARGET_INT_BIT ;
 int TARGET_LONG_BIT ;
 int TARGET_LONG_DOUBLE_BIT ;
 void* TARGET_LONG_DOUBLE_FORMAT ;
 int TARGET_LONG_LONG_BIT ;
 int TARGET_SHORT_BIT ;
 int TYPE_CODE_BOOL ;
 int TYPE_CODE_CHAR ;
 int TYPE_CODE_COMPLEX ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_STRING ;
 int TYPE_CODE_VOID ;
 int TYPE_FLAG_NOSIGN ;
 int TYPE_FLAG_UNSIGNED ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int build_builtin_type_vec128 () ;
 int build_builtin_type_vec128i () ;
 int build_builtin_type_vec64 () ;
 int build_builtin_type_vec64i () ;
 void* builtin_type_CORE_ADDR ;
 void* builtin_type_bfd_vma ;
 void* builtin_type_bool ;
 void* builtin_type_char ;
 void* builtin_type_complex ;
 void* builtin_type_double ;
 void* builtin_type_double_complex ;
 void* builtin_type_float ;
 void* builtin_type_int ;
 void* builtin_type_int0 ;
 void* builtin_type_int128 ;
 void* builtin_type_int16 ;
 void* builtin_type_int32 ;
 void* builtin_type_int64 ;
 void* builtin_type_int8 ;
 void* builtin_type_long ;
 void* builtin_type_long_double ;
 void* builtin_type_long_long ;
 void* builtin_type_short ;
 void* builtin_type_signed_char ;
 void* builtin_type_string ;
 void* builtin_type_true_char ;
 void* builtin_type_uint128 ;
 void* builtin_type_uint16 ;
 void* builtin_type_uint32 ;
 void* builtin_type_uint64 ;
 void* builtin_type_uint8 ;
 void* builtin_type_unsigned_char ;
 void* builtin_type_unsigned_int ;
 void* builtin_type_unsigned_long ;
 void* builtin_type_unsigned_long_long ;
 void* builtin_type_unsigned_short ;
 void* builtin_type_v16_int8 ;
 void* builtin_type_v16qi ;
 void* builtin_type_v2_double ;
 void* builtin_type_v2_float ;
 void* builtin_type_v2_int32 ;
 void* builtin_type_v2_int64 ;
 void* builtin_type_v2si ;
 void* builtin_type_v4_float ;
 void* builtin_type_v4_int16 ;
 void* builtin_type_v4_int32 ;
 void* builtin_type_v4hi ;
 void* builtin_type_v4sf ;
 void* builtin_type_v4si ;
 void* builtin_type_v8_int16 ;
 void* builtin_type_v8_int8 ;
 void* builtin_type_v8hi ;
 void* builtin_type_v8qi ;
 int builtin_type_vec128 ;
 int builtin_type_vec128i ;
 int builtin_type_vec64 ;
 int builtin_type_vec64i ;
 void* builtin_type_void ;
 int builtin_type_void_data_ptr ;
 int builtin_type_void_func_ptr ;
 int class_support ;
 void* init_simd_type (char*,void*,char*,int) ;
 void* init_type (int ,int,int,char*,struct objfile*) ;
 void* init_vector_type (void*,int) ;
 int lookup_function_type (void*) ;
 int lookup_pointer_type (int ) ;
 int make_pointer_type (void*,int *) ;
 int opaque_type_resolution ;
 int setlist ;
 int showlist ;
 int var_boolean ;

__attribute__((used)) static void
build_gdbtypes (void)
{
  builtin_type_void =
    init_type (TYPE_CODE_VOID, 1,
        0,
        "void", (struct objfile *) ((void*)0));
  builtin_type_char =
    init_type (TYPE_CODE_INT, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        (TYPE_FLAG_NOSIGN
                | (TARGET_CHAR_SIGNED ? 0 : TYPE_FLAG_UNSIGNED)),
        "char", (struct objfile *) ((void*)0));
  builtin_type_true_char =
    init_type (TYPE_CODE_CHAR, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        0,
        "true character", (struct objfile *) ((void*)0));
  builtin_type_signed_char =
    init_type (TYPE_CODE_INT, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        0,
        "signed char", (struct objfile *) ((void*)0));
  builtin_type_unsigned_char =
    init_type (TYPE_CODE_INT, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "unsigned char", (struct objfile *) ((void*)0));
  builtin_type_short =
    init_type (TYPE_CODE_INT, TARGET_SHORT_BIT / TARGET_CHAR_BIT,
        0,
        "short", (struct objfile *) ((void*)0));
  builtin_type_unsigned_short =
    init_type (TYPE_CODE_INT, TARGET_SHORT_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "unsigned short", (struct objfile *) ((void*)0));
  builtin_type_int =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
        0,
        "int", (struct objfile *) ((void*)0));
  builtin_type_unsigned_int =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "unsigned int", (struct objfile *) ((void*)0));
  builtin_type_long =
    init_type (TYPE_CODE_INT, TARGET_LONG_BIT / TARGET_CHAR_BIT,
        0,
        "long", (struct objfile *) ((void*)0));
  builtin_type_unsigned_long =
    init_type (TYPE_CODE_INT, TARGET_LONG_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "unsigned long", (struct objfile *) ((void*)0));
  builtin_type_long_long =
    init_type (TYPE_CODE_INT, TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
        0,
        "long long", (struct objfile *) ((void*)0));
  builtin_type_unsigned_long_long =
    init_type (TYPE_CODE_INT, TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "unsigned long long", (struct objfile *) ((void*)0));
  builtin_type_float =
    init_type (TYPE_CODE_FLT, TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
        0,
        "float", (struct objfile *) ((void*)0));
  builtin_type_double =
    init_type (TYPE_CODE_FLT, TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "double", (struct objfile *) ((void*)0));



  builtin_type_long_double =
    init_type (TYPE_CODE_FLT, TARGET_LONG_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "long double", (struct objfile *) ((void*)0));



  builtin_type_complex =
    init_type (TYPE_CODE_COMPLEX, 2 * TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
        0,
        "complex", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (builtin_type_complex) = builtin_type_float;
  builtin_type_double_complex =
    init_type (TYPE_CODE_COMPLEX, 2 * TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
        0,
        "double complex", (struct objfile *) ((void*)0));
  TYPE_TARGET_TYPE (builtin_type_double_complex) = builtin_type_double;
  builtin_type_string =
    init_type (TYPE_CODE_STRING, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        0,
        "string", (struct objfile *) ((void*)0));
  builtin_type_int0 =
    init_type (TYPE_CODE_INT, 0 / 8,
        0,
        "int0_t", (struct objfile *) ((void*)0));
  builtin_type_int8 =
    init_type (TYPE_CODE_INT, 8 / 8,
        0,
        "int8_t", (struct objfile *) ((void*)0));
  builtin_type_uint8 =
    init_type (TYPE_CODE_INT, 8 / 8,
        TYPE_FLAG_UNSIGNED,
        "uint8_t", (struct objfile *) ((void*)0));
  builtin_type_int16 =
    init_type (TYPE_CODE_INT, 16 / 8,
        0,
        "int16_t", (struct objfile *) ((void*)0));
  builtin_type_uint16 =
    init_type (TYPE_CODE_INT, 16 / 8,
        TYPE_FLAG_UNSIGNED,
        "uint16_t", (struct objfile *) ((void*)0));
  builtin_type_int32 =
    init_type (TYPE_CODE_INT, 32 / 8,
        0,
        "int32_t", (struct objfile *) ((void*)0));
  builtin_type_uint32 =
    init_type (TYPE_CODE_INT, 32 / 8,
        TYPE_FLAG_UNSIGNED,
        "uint32_t", (struct objfile *) ((void*)0));
  builtin_type_int64 =
    init_type (TYPE_CODE_INT, 64 / 8,
        0,
        "int64_t", (struct objfile *) ((void*)0));
  builtin_type_uint64 =
    init_type (TYPE_CODE_INT, 64 / 8,
        TYPE_FLAG_UNSIGNED,
        "uint64_t", (struct objfile *) ((void*)0));
  builtin_type_int128 =
    init_type (TYPE_CODE_INT, 128 / 8,
        0,
        "int128_t", (struct objfile *) ((void*)0));
  builtin_type_uint128 =
    init_type (TYPE_CODE_INT, 128 / 8,
        TYPE_FLAG_UNSIGNED,
        "uint128_t", (struct objfile *) ((void*)0));
  builtin_type_bool =
    init_type (TYPE_CODE_BOOL, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        0,
        "bool", (struct objfile *) ((void*)0));


  add_show_from_set
    (add_set_cmd ("opaque-type-resolution", class_support, var_boolean, (char *) &opaque_type_resolution,
    "Set resolution of opaque struct/class/union types (if set before loading symbols).",
    &setlist),
     &showlist);
  opaque_type_resolution = 1;


  builtin_type_v4sf
    = init_simd_type ("__builtin_v4sf", builtin_type_float, "f", 4);
  builtin_type_v4si
    = init_simd_type ("__builtin_v4si", builtin_type_int32, "f", 4);
  builtin_type_v16qi
    = init_simd_type ("__builtin_v16qi", builtin_type_int8, "f", 16);
  builtin_type_v8qi
    = init_simd_type ("__builtin_v8qi", builtin_type_int8, "f", 8);
  builtin_type_v8hi
    = init_simd_type ("__builtin_v8hi", builtin_type_int16, "f", 8);
  builtin_type_v4hi
    = init_simd_type ("__builtin_v4hi", builtin_type_int16, "f", 4);
  builtin_type_v2si
    = init_simd_type ("__builtin_v2si", builtin_type_int32, "f", 2);


  builtin_type_v2_double = init_vector_type (builtin_type_double, 2);
  builtin_type_v4_float = init_vector_type (builtin_type_float, 4);
  builtin_type_v2_int64 = init_vector_type (builtin_type_int64, 2);
  builtin_type_v4_int32 = init_vector_type (builtin_type_int32, 4);
  builtin_type_v8_int16 = init_vector_type (builtin_type_int16, 8);
  builtin_type_v16_int8 = init_vector_type (builtin_type_int8, 16);

  builtin_type_v2_float = init_vector_type (builtin_type_float, 2);
  builtin_type_v2_int32 = init_vector_type (builtin_type_int32, 2);
  builtin_type_v4_int16 = init_vector_type (builtin_type_int16, 4);
  builtin_type_v8_int8 = init_vector_type (builtin_type_int8, 8);


  builtin_type_vec64 = build_builtin_type_vec64 ();
  builtin_type_vec64i = build_builtin_type_vec64i ();
  builtin_type_vec128 = build_builtin_type_vec128 ();
  builtin_type_vec128i = build_builtin_type_vec128i ();
  builtin_type_void_data_ptr = make_pointer_type (builtin_type_void, ((void*)0));
  builtin_type_void_func_ptr
    = lookup_pointer_type (lookup_function_type (builtin_type_void));
  builtin_type_CORE_ADDR =
    init_type (TYPE_CODE_INT, TARGET_ADDR_BIT / 8,
        TYPE_FLAG_UNSIGNED,
        "__CORE_ADDR", (struct objfile *) ((void*)0));
  builtin_type_bfd_vma =
    init_type (TYPE_CODE_INT, TARGET_BFD_VMA_BIT / 8,
        TYPE_FLAG_UNSIGNED,
        "__bfd_vma", (struct objfile *) ((void*)0));
}
