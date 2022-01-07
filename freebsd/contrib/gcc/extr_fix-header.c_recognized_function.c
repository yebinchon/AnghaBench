
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct partial_proto {unsigned int line_seen; struct partial_proto* next; struct fn_decl* fn; } ;
struct fn_decl {char* params; char* fname; struct partial_proto* partial; } ;
struct TYPE_4__ {int node; } ;
struct TYPE_5__ {TYPE_1__ val; } ;
typedef TYPE_2__ cpp_token ;


 int NODE_LEN (int ) ;
 scalar_t__ NODE_NAME (int ) ;
 scalar_t__ REQUIRED (struct fn_decl*) ;
 int SET_SEEN (struct fn_decl*) ;
 int cur_file ;
 int fprintf (int ,char*,char*,char*) ;
 char* inc_filename ;
 int inc_filename_length ;
 struct fn_decl* lookup_std_proto (char const*,int ) ;
 struct partial_proto* obstack_alloc (int *,int) ;
 int partial_count ;
 struct partial_proto* partial_proto_list ;
 int required_unseen_count ;
 int scan_file_obstack ;
 int stderr ;
 scalar_t__ strcmp (char*,int) ;
 int strlen (int) ;
 scalar_t__ verbose ;

void
recognized_function (const cpp_token *fname, unsigned int line, int kind,
       int have_arg_list)
{
  struct partial_proto *partial;
  int i;
  struct fn_decl *fn;

  fn = lookup_std_proto ((const char *) NODE_NAME (fname->val.node),
    NODE_LEN (fname->val.node));


  if (fn)
    {
      if (REQUIRED (fn))
 required_unseen_count--;
      SET_SEEN (fn);
    }


  if (have_arg_list)
    return;

  if (kind == 'I')
    return;



  i = strlen (cur_file);
  if (i < inc_filename_length
      || strcmp (inc_filename, cur_file + (i - inc_filename_length)) != 0)
    return;

  if (fn == ((void*)0))
    return;
  if (fn->params[0] == '\0')
    return;



  partial_count++;
  partial = obstack_alloc (&scan_file_obstack, sizeof (struct partial_proto));
  partial->line_seen = line;
  partial->fn = fn;
  fn->partial = partial;
  partial->next = partial_proto_list;
  partial_proto_list = partial;
  if (verbose)
    {
      fprintf (stderr, "(%s: %s non-prototype function declaration.)\n",
        inc_filename, fn->fname);
    }
}
