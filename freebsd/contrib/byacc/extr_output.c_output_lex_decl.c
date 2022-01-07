
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ lex_param ;
 scalar_t__ locations ;
 scalar_t__ pure_parser ;
 int putc_code (int *,char) ;
 int putl_code (int *,char*) ;
 int puts_code (int *,char*) ;
 int puts_param_names (int *,scalar_t__,int ) ;
 int puts_param_types (int *,scalar_t__,int ) ;

__attribute__((used)) static void
output_lex_decl(FILE * fp)
{
    putc_code(fp, '\n');
    putl_code(fp, "/* Parameters sent to lex. */\n");
    putl_code(fp, "#ifdef YYLEX_PARAM\n");
    if (pure_parser)
    {
 putl_code(fp, "# ifdef YYLEX_PARAM_TYPE\n");
 {
     putl_code(fp, "#  define YYLEX_DECL() yylex(YYSTYPE *yylval,"
        " YYLEX_PARAM_TYPE YYLEX_PARAM)\n");
 }
 putl_code(fp, "# else\n");
 {
     putl_code(fp, "#  define YYLEX_DECL() yylex(YYSTYPE *yylval,"
        " void * YYLEX_PARAM)\n");
 }
 putl_code(fp, "# endif\n");






     putl_code(fp, "# define YYLEX yylex(&yylval, YYLEX_PARAM)\n");
    }
    else
    {
 putl_code(fp, "# define YYLEX_DECL() yylex(void *YYLEX_PARAM)\n");
 putl_code(fp, "# define YYLEX yylex(YYLEX_PARAM)\n");
    }
    putl_code(fp, "#else\n");
    if (pure_parser && lex_param)
    {






     puts_code(fp, "# define YYLEX_DECL() yylex(YYSTYPE *yylval, ");
 puts_param_types(fp, lex_param, 0);
 putl_code(fp, ")\n");






     puts_code(fp, "# define YYLEX yylex(&yylval, ");
 puts_param_names(fp, lex_param, 0);
 putl_code(fp, ")\n");
    }
    else if (pure_parser)
    {
 {
     putl_code(fp, "# define YYLEX_DECL() yylex(YYSTYPE *yylval)\n");
     putl_code(fp, "# define YYLEX yylex(&yylval)\n");
 }
    }
    else if (lex_param)
    {
 puts_code(fp, "# define YYLEX_DECL() yylex(");
 puts_param_types(fp, lex_param, 0);
 putl_code(fp, ")\n");

 puts_code(fp, "# define YYLEX yylex(");
 puts_param_names(fp, lex_param, 0);
 putl_code(fp, ")\n");
    }
    else
    {
 putl_code(fp, "# define YYLEX_DECL() yylex(void)\n");
 putl_code(fp, "# define YYLEX yylex()\n");
    }
    putl_code(fp, "#endif\n");
}
