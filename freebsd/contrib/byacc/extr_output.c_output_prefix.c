
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ CountLine (int *) ;
 int define_prefixed (int *,char*) ;
 int fprintf (int *,char*,char*) ;
 scalar_t__ locations ;
 int outline ;
 int putc_code (int *,char) ;
 int putl_code (int *,char*) ;
 char* symbol_prefix ;

__attribute__((used)) static void
output_prefix(FILE * fp)
{
    if (symbol_prefix == ((void*)0))
    {
 symbol_prefix = "yy";
    }
    else
    {
 define_prefixed(fp, "yyparse");
 define_prefixed(fp, "yylex");
 define_prefixed(fp, "yyerror");
 define_prefixed(fp, "yychar");
 define_prefixed(fp, "yyval");
 define_prefixed(fp, "yylval");
 define_prefixed(fp, "yydebug");
 define_prefixed(fp, "yynerrs");
 define_prefixed(fp, "yyerrflag");
 define_prefixed(fp, "yylhs");
 define_prefixed(fp, "yylen");
 define_prefixed(fp, "yydefred");



 define_prefixed(fp, "yydgoto");
 define_prefixed(fp, "yysindex");
 define_prefixed(fp, "yyrindex");
 define_prefixed(fp, "yygindex");
 define_prefixed(fp, "yytable");
 define_prefixed(fp, "yycheck");
 define_prefixed(fp, "yyname");
 define_prefixed(fp, "yyrule");
    }
    if (CountLine(fp))
 ++outline;
    fprintf(fp, "#define YYPREFIX \"%s\"\n", symbol_prefix);
}
