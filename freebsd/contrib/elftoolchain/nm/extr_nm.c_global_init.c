
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* def_filename; int name; } ;
struct TYPE_3__ {int demangle_type; int print_debug; int print_armap; int debug_line; int undef_only; int sort_reverse; int * fileargs; int * size_print_fn; int * value_print_fn; int * elem_print_fn; int * sort_fn; scalar_t__ no_demangle; scalar_t__ sort_size; scalar_t__ def_only; scalar_t__ print_size; int print_name; int print_symbol; } ;


 int ELFTC_GETPROGNAME () ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int EXIT_FAILURE ;
 int PRINT_NAME_NONE ;
 int PRINT_SYM_SYM ;
 int SLIST_INIT (int *) ;
 int cmp_name ;
 scalar_t__ elf_version (int ) ;
 int errx (int ,char*) ;
 TYPE_2__ nm_info ;
 TYPE_1__ nm_opts ;
 int nm_out_filter ;
 int sym_elem_print_all ;
 int sym_size_dec_print ;
 int sym_value_dec_print ;

__attribute__((used)) static void
global_init(void)
{

 if (elf_version(EV_CURRENT) == EV_NONE)
  errx(EXIT_FAILURE, "elf_version error");

 nm_info.name = ELFTC_GETPROGNAME();
 nm_info.def_filename = "a.out";
 nm_opts.print_symbol = PRINT_SYM_SYM;
 nm_opts.print_name = PRINT_NAME_NONE;
 nm_opts.demangle_type = -1;
 nm_opts.print_debug = 0;
 nm_opts.print_armap = 0;
 nm_opts.print_size = 0;
 nm_opts.debug_line = 0;
 nm_opts.def_only = 0;
 nm_opts.undef_only = 0;
 nm_opts.sort_size = 0;
 nm_opts.sort_reverse = 0;
 nm_opts.no_demangle = 0;
 nm_opts.sort_fn = &cmp_name;
 nm_opts.elem_print_fn = &sym_elem_print_all;
 nm_opts.value_print_fn = &sym_value_dec_print;
 nm_opts.size_print_fn = &sym_size_dec_print;
 nm_opts.fileargs = ((void*)0);
 SLIST_INIT(&nm_out_filter);
}
