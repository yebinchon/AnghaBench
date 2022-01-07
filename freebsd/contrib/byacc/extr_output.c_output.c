
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int body_1 ;
 int body_2 ;
 int body_3 ;
 int body_vars ;
 int * code_file ;
 int * defines_file ;
 char* defines_file_name ;
 scalar_t__ destructor ;
 scalar_t__ dflag ;
 int end_defines_file () ;
 int * externs_file ;
 char* externs_file_name ;
 int fprintf (int *,char*,char*) ;
 int free_itemsets () ;
 int free_parser () ;
 int free_reductions () ;
 int free_shifts () ;
 int global_vars ;
 int hdr_defs ;
 int hdr_vars ;
 scalar_t__ iflag ;
 int impure_vars ;
 int init_vars ;
 scalar_t__ initial_action ;
 scalar_t__ locations ;
 int outline ;
 int output_YYINT_typedef (int *) ;
 int output_accessing_symbols () ;
 int output_actions () ;
 int output_backtracking_parser (int *) ;
 int output_debug () ;
 int output_defines (int *) ;
 int output_error_decl (int *) ;
 int output_externs (int *,int ) ;
 int * output_file ;
 int output_initial_action () ;
 int output_lex_decl (int *) ;
 int output_ltype (int *) ;
 int output_no_leaks (int *) ;
 int output_parse_decl (int *) ;
 int output_prefix (int *) ;
 int output_pure_parser (int *) ;
 int output_rule_data () ;
 int output_semantic_actions () ;
 int output_stored_text (int *) ;
 int output_stype (int *) ;
 int output_trailing_text () ;
 int output_yydefred () ;
 int output_yydestruct_decl (int *) ;
 int output_yydestruct_impl () ;
 scalar_t__ pure_parser ;
 int putc_code (int *,char) ;
 scalar_t__ rflag ;
 int start_defines_file () ;
 int tables ;
 int trailer ;
 int write_code_lineno (int *) ;
 int write_section (int *,int ) ;
 int xdecls ;

void
output(void)
{
    FILE *fp;

    free_itemsets();
    free_shifts();
    free_reductions();







    if (iflag)
    {
 write_code_lineno(code_file);
 ++outline;
 fprintf(code_file, "#include \"%s\"\n", externs_file_name);
 fp = externs_file;
    }
    else
 fp = code_file;

    output_prefix(fp);
    output_pure_parser(fp);



    output_stored_text(fp);
    output_stype(fp);




    output_parse_decl(fp);
    output_lex_decl(fp);
    output_error_decl(fp);




    if (iflag || !rflag)
    {
 write_section(fp, xdecls);
    }

    if (iflag)
    {
 output_externs(externs_file, global_vars);
 if (!pure_parser)
     output_externs(externs_file, impure_vars);
    }

    if (iflag)
    {
 if (dflag)
 {
     ++outline;
     fprintf(code_file, "#include \"%s\"\n", defines_file_name);
 }
 else
     output_defines(externs_file);
    }
    else
    {
 putc_code(code_file, '\n');
 output_defines(code_file);
    }

    if (dflag)
    {
 start_defines_file();
 output_defines(defines_file);
 end_defines_file();
    }

    output_rule_data();
    output_yydefred();



    output_actions();
    free_parser();
    output_debug();
    if (rflag)
    {
 write_section(code_file, xdecls);
 output_YYINT_typedef(code_file);
 write_section(code_file, tables);
    }
    write_section(code_file, global_vars);
    if (!pure_parser)
    {
 write_section(code_file, impure_vars);
    }
    write_section(code_file, hdr_defs);
    if (!pure_parser)
    {
 write_section(code_file, hdr_vars);
    }
    output_trailing_text();




    write_section(code_file, body_1);
    if (pure_parser)
    {
 write_section(code_file, body_vars);
    }
    write_section(code_file, body_2);
    if (pure_parser)
    {
 write_section(code_file, init_vars);
    }




    write_section(code_file, body_3);
    output_semantic_actions();
    write_section(code_file, trailer);
}
