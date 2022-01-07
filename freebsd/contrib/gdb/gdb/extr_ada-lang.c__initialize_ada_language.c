
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
typedef char* TYPE_NAME ;


 int TARGET_CHAR_BIT ;
 int TARGET_DOUBLE_BIT ;
 int TARGET_FLOAT_BIT ;
 int TARGET_INT_BIT ;
 int TARGET_LONG_BIT ;
 int TARGET_LONG_DOUBLE_BIT ;
 int TARGET_LONG_LONG_BIT ;
 int TARGET_SHORT_BIT ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_VOID ;
 int ada_language_defn ;
 int add_com (char*,int ,int ,char*) ;
 int add_language (int *) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int begin_command ;
 void* builtin_type_ada_char ;
 void* builtin_type_ada_double ;
 void* builtin_type_ada_float ;
 void* builtin_type_ada_int ;
 void* builtin_type_ada_long ;
 void* builtin_type_ada_long_double ;
 void* builtin_type_ada_long_long ;
 void* builtin_type_ada_natural ;
 void* builtin_type_ada_positive ;
 void* builtin_type_ada_short ;
 char* builtin_type_ada_system_address ;
 int class_breakpoint ;
 int class_support ;
 void* init_type (int ,int,int ,char*,struct objfile*) ;
 int lookup_pointer_type (void*) ;
 int setlist ;
 int showlist ;
 int var_uinteger ;
 int varsize_limit ;

void
_initialize_ada_language (void)
{
  builtin_type_ada_int =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
        0, "integer", (struct objfile *) ((void*)0));
  builtin_type_ada_long =
    init_type (TYPE_CODE_INT, TARGET_LONG_BIT / TARGET_CHAR_BIT,
        0, "long_integer", (struct objfile *) ((void*)0));
  builtin_type_ada_short =
    init_type (TYPE_CODE_INT, TARGET_SHORT_BIT / TARGET_CHAR_BIT,
        0, "short_integer", (struct objfile *) ((void*)0));
  builtin_type_ada_char =
    init_type (TYPE_CODE_INT, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
        0, "character", (struct objfile *) ((void*)0));
  builtin_type_ada_float =
    init_type (TYPE_CODE_FLT, TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
        0, "float", (struct objfile *) ((void*)0));
  builtin_type_ada_double =
    init_type (TYPE_CODE_FLT, TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
        0, "long_float", (struct objfile *) ((void*)0));
  builtin_type_ada_long_long =
    init_type (TYPE_CODE_INT, TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
        0, "long_long_integer", (struct objfile *) ((void*)0));
  builtin_type_ada_long_double =
    init_type (TYPE_CODE_FLT, TARGET_LONG_DOUBLE_BIT / TARGET_CHAR_BIT,
        0, "long_long_float", (struct objfile *) ((void*)0));
  builtin_type_ada_natural =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
        0, "natural", (struct objfile *) ((void*)0));
  builtin_type_ada_positive =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
        0, "positive", (struct objfile *) ((void*)0));


  builtin_type_ada_system_address =
    lookup_pointer_type (init_type (TYPE_CODE_VOID, 1, 0, "void",
        (struct objfile *) ((void*)0)));
  TYPE_NAME (builtin_type_ada_system_address) = "system__address";

  add_language (&ada_language_defn);

  add_show_from_set
    (add_set_cmd ("varsize-limit", class_support, var_uinteger,
    (char *) &varsize_limit,
    "Set maximum bytes in dynamic-sized object.",
    &setlist), &showlist);
  varsize_limit = 65536;

  add_com ("begin", class_breakpoint, begin_command,
    "Start the debugged program, stopping at the beginning of the\nmain program.  You may specify command-line arguments to give it, as for\nthe \"run\" command (q.v.).");


}
