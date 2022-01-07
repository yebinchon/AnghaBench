
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_CODE_BOOL ;
 int TYPE_CODE_CHAR ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_VOID ;
 int TYPE_FLAG_UNSIGNED ;
 int add_language (int *) ;
 void* init_type (int ,int,int ,char*,int *) ;
 void* java_boolean_type ;
 void* java_byte_type ;
 void* java_char_type ;
 void* java_double_type ;
 void* java_float_type ;
 void* java_int_type ;
 int java_language_defn ;
 void* java_long_type ;
 void* java_short_type ;
 void* java_void_type ;

void
_initialize_java_language (void)
{

  java_int_type = init_type (TYPE_CODE_INT, 4, 0, "int", ((void*)0));
  java_short_type = init_type (TYPE_CODE_INT, 2, 0, "short", ((void*)0));
  java_long_type = init_type (TYPE_CODE_INT, 8, 0, "long", ((void*)0));
  java_byte_type = init_type (TYPE_CODE_INT, 1, 0, "byte", ((void*)0));
  java_boolean_type = init_type (TYPE_CODE_BOOL, 1, 0, "boolean", ((void*)0));
  java_char_type = init_type (TYPE_CODE_CHAR, 2, TYPE_FLAG_UNSIGNED, "char", ((void*)0));
  java_float_type = init_type (TYPE_CODE_FLT, 4, 0, "float", ((void*)0));
  java_double_type = init_type (TYPE_CODE_FLT, 8, 0, "double", ((void*)0));
  java_void_type = init_type (TYPE_CODE_VOID, 1, 0, "void", ((void*)0));

  add_language (&java_language_defn);
}
