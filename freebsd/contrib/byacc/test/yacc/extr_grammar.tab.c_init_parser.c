
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keywords ;


 int DS_NONE ;
 int new_symbol (int ,char const*,int *,int ) ;
 int new_symbol_table () ;
 int type_qualifiers ;

void
init_parser (void)
{
    static const char *keywords[] = {
 "const",
 "restrict",
 "volatile",
 "interrupt",
 "__builtin_va_arg",
 "__builtin_va_list",
 "__const",
 "__const__",
 "__inline",
 "__inline__",
 "__restrict",
 "__restrict__",
 "__volatile",
 "__volatile__",

    };
    unsigned i;


    type_qualifiers = new_symbol_table();
    for (i = 0; i < sizeof(keywords)/sizeof(keywords[0]); ++i) {
 new_symbol(type_qualifiers, keywords[i], ((void*)0), DS_NONE);
    }
}
