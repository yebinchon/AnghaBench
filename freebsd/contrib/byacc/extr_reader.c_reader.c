
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int banner ;
 int check_symbols () ;
 int code_file ;
 int create_symbol_table () ;
 scalar_t__ destructor ;
 int finalize_destructors () ;
 int free_symbol_table () ;
 int free_symbols () ;
 int free_tags () ;
 int pack_grammar () ;
 int pack_names () ;
 int pack_symbols () ;
 int print_grammar () ;
 int read_declarations () ;
 int read_grammar () ;
 int write_section (int ,int ) ;

void
reader(void)
{
    write_section(code_file, banner);
    create_symbol_table();
    read_declarations();
    read_grammar();
    free_symbol_table();
    pack_names();
    check_symbols();
    pack_symbols();
    pack_grammar();
    free_symbols();
    print_grammar();




    free_tags();
}
