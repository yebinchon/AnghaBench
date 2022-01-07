
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expression {int nelts; TYPE_1__* language_defn; } ;
struct cleanup {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_2__ {int (* la_error ) (int *) ;scalar_t__ (* la_parser ) () ;} ;


 int BLOCK_START (struct block*) ;
 scalar_t__ EXP_ELEM_TO_BYTES (int) ;
 scalar_t__ alloca (scalar_t__) ;
 int comma_terminates ;
 TYPE_1__* current_language ;
 int discard_cleanups (struct cleanup*) ;
 int dump_prefix_expression (struct expression*,int ) ;
 int dump_raw_expression (struct expression*,int ,char*) ;
 int error_no_arg (char*) ;
 struct expression* expout ;
 int expout_ptr ;
 int expout_size ;
 struct block* expression_context_block ;
 int expression_context_pc ;
 scalar_t__ expressiondebug ;
 int free_current_contents ;
 int free_funcalls ;
 scalar_t__ funcall_chain ;
 int gdb_stdlog ;
 struct block* get_selected_block (int *) ;
 scalar_t__* lexptr ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 char* namecopy ;
 scalar_t__ paren_depth ;
 int prefixify_expression (struct expression*) ;
 int * prev_lexptr ;
 scalar_t__ strlen (scalar_t__*) ;
 scalar_t__ stub1 () ;
 int stub2 (int *) ;
 scalar_t__ type_stack_depth ;
 scalar_t__ xmalloc (scalar_t__) ;
 scalar_t__ xrealloc (char*,scalar_t__) ;

struct expression *
parse_exp_1 (char **stringptr, struct block *block, int comma)
{
  struct cleanup *old_chain;

  lexptr = *stringptr;
  prev_lexptr = ((void*)0);

  paren_depth = 0;
  type_stack_depth = 0;

  comma_terminates = comma;

  if (lexptr == 0 || *lexptr == 0)
    error_no_arg ("expression to compute");

  old_chain = make_cleanup (free_funcalls, 0 );
  funcall_chain = 0;

  if (block)
    {
      expression_context_block = block;
      expression_context_pc = BLOCK_START (block);
    }
  else
    expression_context_block = get_selected_block (&expression_context_pc);

  namecopy = (char *) alloca (strlen (lexptr) + 1);
  expout_size = 10;
  expout_ptr = 0;
  expout = (struct expression *)
    xmalloc (sizeof (struct expression) + EXP_ELEM_TO_BYTES (expout_size));
  expout->language_defn = current_language;
  make_cleanup (free_current_contents, &expout);

  if (current_language->la_parser ())
    current_language->la_error (((void*)0));

  discard_cleanups (old_chain);





  expout->nelts = expout_ptr;
  expout = (struct expression *)
    xrealloc ((char *) expout,
       sizeof (struct expression) + EXP_ELEM_TO_BYTES (expout_ptr));;




  if (expressiondebug)
    dump_raw_expression (expout, gdb_stdlog,
    "before conversion to prefix form");

  prefixify_expression (expout);

  if (expressiondebug)
    dump_prefix_expression (expout, gdb_stdlog);

  *stringptr = lexptr;
  return expout;
}
