
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ locations ;
 int parse_param ;
 int putc_code (int *,char) ;
 int putl_code (int *,char*) ;
 int puts_code (int *,char*) ;
 int puts_param_names (int *,int ,int) ;
 int puts_param_types (int *,int ,int) ;

__attribute__((used)) static void
output_error_decl(FILE * fp)
{
    putc_code(fp, '\n');
    putl_code(fp, "/* Parameters sent to yyerror. */\n");
    putl_code(fp, "#ifndef YYERROR_DECL\n");
    puts_code(fp, "#define YYERROR_DECL() yyerror(");




    puts_param_types(fp, parse_param, 1);
    putl_code(fp, "const char *s)\n");
    putl_code(fp, "#endif\n");

    putl_code(fp, "#ifndef YYERROR_CALL\n");

    puts_code(fp, "#define YYERROR_CALL(msg) yyerror(");




    puts_param_names(fp, parse_param, 1);
    putl_code(fp, "msg)\n");

    putl_code(fp, "#endif\n");
}
