
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TYPE_TARGET_TYPE ;


 int HOST_CHAR_BIT ;
 int TARGET_INT_BIT ;
 int TYPE_CODE_FUNC ;
 int TYPE_CODE_INT ;
 int builtin_type_int ;
 void* init_type (int ,int,int ,char*,int *) ;
 void* msym_data_symbol_type ;
 int msym_text_symbol_type ;
 void* msym_unknown_symbol_type ;

__attribute__((used)) static void
build_parse (void)
{
  int i;

  msym_text_symbol_type =
    init_type (TYPE_CODE_FUNC, 1, 0, "<text variable, no debug info>", ((void*)0));
  TYPE_TARGET_TYPE (msym_text_symbol_type) = builtin_type_int;
  msym_data_symbol_type =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / HOST_CHAR_BIT, 0,
        "<data variable, no debug info>", ((void*)0));
  msym_unknown_symbol_type =
    init_type (TYPE_CODE_INT, 1, 0,
        "<variable (not text or data), no debug info>",
        ((void*)0));
}
