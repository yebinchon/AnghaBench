
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct symbol_list {scalar_t__ names; } ;
struct fn_decl {int dummy; } ;
typedef int getchar_call ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_1__ cpp_token ;
typedef int cpp_reader ;
struct TYPE_9__ {int inhibit_warnings; int inhibit_errors; } ;
typedef TYPE_2__ cpp_options ;
struct TYPE_10__ {int file_change; } ;
typedef TYPE_3__ cpp_callbacks ;


 int ANSI_SYMBOL ;
 int BRACKET ;
 int CLK_GNUC89 ;
 int CPP_DL_ERROR ;
 scalar_t__ CPP_EOF ;
 int FATAL_EXIT_CODE ;
 int LC_RENAME ;
 int REQUIRED (struct fn_decl*) ;
 int SEEN (struct fn_decl*) ;
 int SET_REQUIRED (struct fn_decl*) ;
 int SUCCESS_EXIT_CODE ;
 int add_path (int ,int ,int,int) ;
 int add_symbols (int ,char const*) ;
 int cb_file_change ;
 int check_macro_names (int *,scalar_t__) ;
 int cpp_change_file (int *,int ,char*) ;
 int * cpp_create_reader (int ,int *,int *) ;
 int cpp_define (int *,char*) ;
 int cpp_error (int *,int ,char*,char*) ;
 scalar_t__ cpp_errors (int *) ;
 TYPE_3__* cpp_get_callbacks (int *) ;
 TYPE_2__* cpp_get_options (int *) ;
 TYPE_1__* cpp_get_token (int *) ;
 scalar_t__ cpp_ideq (TYPE_1__ const*,char*) ;
 int cpp_init_builtins (int *,int) ;
 int cpp_make_system_header (int *,int,int ) ;
 int cpp_post_options (int *) ;
 int cpp_push_buffer (int *,unsigned char*,int,int) ;
 int cpp_read_main_file (int *,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,...) ;
 char* inc_filename ;
 int line_table ;
 int linemap_init (int *) ;
 struct fn_decl* lookup_std_proto (char*,int) ;
 int obstack_init (int *) ;
 scalar_t__ partial_count ;
 char* progname ;
 int register_include_chains (int *,int *,int *,int *,int,int,int) ;
 scalar_t__ required_other ;
 scalar_t__ required_unseen_count ;
 int scan_decls (int *,int,char**) ;
 int scan_file_obstack ;
 scalar_t__ special_file_handling ;
 int stderr ;
 scalar_t__ stdio_h ;
 struct symbol_list* symbol_table ;
 scalar_t__ verbose ;
 int xstrdup (char*) ;

__attribute__((used)) static void
read_scan_file (char *in_fname, int argc, char **argv)
{
  cpp_reader *scan_in;
  cpp_callbacks *cb;
  cpp_options *options;
  struct fn_decl *fn;
  int i, strings_processed;
  struct symbol_list *cur_symbols;

  obstack_init (&scan_file_obstack);

  linemap_init (&line_table);
  scan_in = cpp_create_reader (CLK_GNUC89, ((void*)0), &line_table);
  cb = cpp_get_callbacks (scan_in);
  cb->file_change = cb_file_change;



  options = cpp_get_options (scan_in);
  options->inhibit_warnings = 1;
  options->inhibit_errors = 1;
  cpp_post_options (scan_in);

  if (!cpp_read_main_file (scan_in, in_fname))
    exit (FATAL_EXIT_CODE);

  cpp_change_file (scan_in, LC_RENAME, "<built-in>");
  cpp_init_builtins (scan_in, 1);
  cpp_change_file (scan_in, LC_RENAME, in_fname);


  for (i = 0; i < argc; i += strings_processed)
    {
      strings_processed = 0;
      if (argv[i][0] == '-')
 {
   if (argv[i][1] == 'I')
     {
       if (argv[i][2] != '\0')
  {
    strings_processed = 1;
    add_path (xstrdup (argv[i] + 2), BRACKET, 0, 0);
  }
       else if (i + 1 != argc)
  {
    strings_processed = 2;
    add_path (xstrdup (argv[i + 1]), BRACKET, 0, 0);
  }
     }
   else if (argv[i][1] == 'D')
     {
       if (argv[i][2] != '\0')
  strings_processed = 1, cpp_define (scan_in, argv[i] + 2);
       else if (i + 1 != argc)
  strings_processed = 2, cpp_define (scan_in, argv[i + 1]);
     }
 }

      if (strings_processed == 0)
 break;
    }

  if (i < argc)
    cpp_error (scan_in, CPP_DL_ERROR, "invalid option `%s'", argv[i]);
  if (cpp_errors (scan_in))
    exit (FATAL_EXIT_CODE);

  register_include_chains (scan_in, ((void*)0) , ((void*)0) ,
      ((void*)0) , 1 ,
      0 , 0 );


  cpp_make_system_header (scan_in, 1, 0);

  scan_decls (scan_in, argc, argv);
  for (cur_symbols = &symbol_table[0]; cur_symbols->names; cur_symbols++)
    check_macro_names (scan_in, cur_symbols->names);



  if (special_file_handling == stdio_h
      && (fn = lookup_std_proto ("_filbuf", 7)) != ((void*)0))
    {
      unsigned char getchar_call[] = "getchar();\n";
      int seen_filbuf = 0;


      cpp_push_buffer (scan_in, getchar_call, sizeof(getchar_call) - 1,
                           1);
      for (;;)
 {
   const cpp_token *t = cpp_get_token (scan_in);

   if (t->type == CPP_EOF)
     break;
   else if (cpp_ideq (t, "_filbuf"))
     seen_filbuf++;
 }

      if (seen_filbuf)
 {
   int need_filbuf = !SEEN (fn) && !REQUIRED (fn);
   struct fn_decl *flsbuf_fn = lookup_std_proto ("_flsbuf", 7);
   int need_flsbuf
     = flsbuf_fn && !SEEN (flsbuf_fn) && !REQUIRED (flsbuf_fn);


   if (need_filbuf + need_flsbuf)
     {
       const char *new_list;
       if (need_filbuf)
  SET_REQUIRED (fn);
       if (need_flsbuf)
  SET_REQUIRED (flsbuf_fn);
       if (need_flsbuf && need_filbuf)
  new_list = "_filbuf\0_flsbuf\0";
       else if (need_flsbuf)
  new_list = "_flsbuf\0";
       else
  new_list = "_filbuf\0";
       add_symbols (ANSI_SYMBOL, new_list);
       required_unseen_count += need_filbuf + need_flsbuf;
     }
 }
    }

  if (required_unseen_count + partial_count + required_other == 0)
    {
      if (verbose)
 fprintf (stderr, "%s: OK, nothing needs to be done.\n", inc_filename);
      exit (SUCCESS_EXIT_CODE);
    }
  if (!verbose)
    fprintf (stderr, "%s: fixing %s\n", progname, inc_filename);
  else
    {
      if (required_unseen_count)
 fprintf (stderr, "%s: %d missing function declarations.\n",
   inc_filename, required_unseen_count);
      if (partial_count)
 fprintf (stderr, "%s: %d non-prototype function declarations.\n",
   inc_filename, partial_count);
    }
}
