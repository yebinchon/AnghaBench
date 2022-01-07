
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int parse_param ;
 int putc_code (int *,char) ;
 int putl_code (int *,char*) ;
 int puts_code (int *,char*) ;
 int puts_param_types (int *,int ,int ) ;

__attribute__((used)) static void
output_parse_decl(FILE * fp)
{
    putc_code(fp, '\n');
    putl_code(fp, "/* compatibility with bison */\n");
    putl_code(fp, "#ifdef YYPARSE_PARAM\n");
    putl_code(fp, "/* compatibility with FreeBSD */\n");
    putl_code(fp, "# ifdef YYPARSE_PARAM_TYPE\n");
    putl_code(fp,
       "#  define YYPARSE_DECL() yyparse(YYPARSE_PARAM_TYPE YYPARSE_PARAM)\n");
    putl_code(fp, "# else\n");
    putl_code(fp, "#  define YYPARSE_DECL() yyparse(void *YYPARSE_PARAM)\n");
    putl_code(fp, "# endif\n");
    putl_code(fp, "#else\n");

    puts_code(fp, "# define YYPARSE_DECL() yyparse(");
    puts_param_types(fp, parse_param, 0);
    putl_code(fp, ")\n");

    putl_code(fp, "#endif\n");
}
