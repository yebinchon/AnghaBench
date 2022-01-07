
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int TARGET_CHAR_BIT ;
 int TARGET_FLOAT_BIT ;
 int TARGET_INT_BIT ;
 int TYPE_CODE_BOOL ;
 int TYPE_CODE_CHAR ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_INT ;
 int TYPE_FLAG_UNSIGNED ;
 int add_language (int *) ;
 void* builtin_type_m2_bool ;
 void* builtin_type_m2_card ;
 void* builtin_type_m2_char ;
 void* builtin_type_m2_int ;
 void* builtin_type_m2_real ;
 void* init_type (int ,int,int ,char*,struct objfile*) ;
 int m2_language_defn ;

void
_initialize_m2_language (void)
{

  builtin_type_m2_int =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
        0,
        "INTEGER", (struct objfile *) ((void*)0));
  builtin_type_m2_card =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "CARDINAL", (struct objfile *) ((void*)0));
  builtin_type_m2_real =
    init_type (TYPE_CODE_FLT, TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
        0,
        "REAL", (struct objfile *) ((void*)0));
  builtin_type_m2_char =
    init_type (TYPE_CODE_CHAR, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "CHAR", (struct objfile *) ((void*)0));
  builtin_type_m2_bool =
    init_type (TYPE_CODE_BOOL, TARGET_INT_BIT / TARGET_CHAR_BIT,
        TYPE_FLAG_UNSIGNED,
        "BOOLEAN", (struct objfile *) ((void*)0));

  add_language (&m2_language_defn);
}
