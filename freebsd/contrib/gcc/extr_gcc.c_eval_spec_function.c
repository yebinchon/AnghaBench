
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spec_function {char* (* func ) (int,char const**) ;} ;


 int alloc_args () ;
 int arg_going ;
 char const** argbuf ;
 int argbuf_index ;
 int argbuf_length ;
 int delete_this_arg ;
 scalar_t__ do_spec_2 (char const*) ;
 int fatal (char*,char const*) ;
 int free (char const**) ;
 int input_from_pipe ;
 struct spec_function* lookup_spec_function (char const*) ;
 char* stub1 (int,char const**) ;
 char const* suffix_subst ;
 int this_is_library_file ;
 int this_is_output_file ;

__attribute__((used)) static const char *
eval_spec_function (const char *func, const char *args)
{
  const struct spec_function *sf;
  const char *funcval;


  int save_argbuf_index;
  int save_argbuf_length;
  const char **save_argbuf;

  int save_arg_going;
  int save_delete_this_arg;
  int save_this_is_output_file;
  int save_this_is_library_file;
  int save_input_from_pipe;
  const char *save_suffix_subst;


  sf = lookup_spec_function (func);
  if (sf == ((void*)0))
    fatal ("unknown spec function '%s'", func);


  save_argbuf_index = argbuf_index;
  save_argbuf_length = argbuf_length;
  save_argbuf = argbuf;

  save_arg_going = arg_going;
  save_delete_this_arg = delete_this_arg;
  save_this_is_output_file = this_is_output_file;
  save_this_is_library_file = this_is_library_file;
  save_input_from_pipe = input_from_pipe;
  save_suffix_subst = suffix_subst;




  alloc_args ();
  if (do_spec_2 (args) < 0)
    fatal ("error in args to spec function '%s'", func);




  funcval = (*sf->func) (argbuf_index, argbuf);


  argbuf_index = save_argbuf_index;
  argbuf_length = save_argbuf_length;
  free (argbuf);
  argbuf = save_argbuf;

  arg_going = save_arg_going;
  delete_this_arg = save_delete_this_arg;
  this_is_output_file = save_this_is_output_file;
  this_is_library_file = save_this_is_library_file;
  input_from_pipe = save_input_from_pipe;
  suffix_subst = save_suffix_subst;

  return funcval;
}
