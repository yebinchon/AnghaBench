
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int FILE ;


 scalar_t__ BLOCK_VARS (int *) ;
 int * DECL_INITIAL (scalar_t__) ;
 int TDF_SLIM ;
 int TDI_tu ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TV_SYMOUT ;
 scalar_t__ all_translation_units ;
 int build_cdtor (char,scalar_t__) ;
 int c_write_global_declarations_1 (scalar_t__) ;
 int c_write_global_declarations_2 (scalar_t__) ;
 int cgraph_optimize () ;
 scalar_t__ cpp_errors (int ) ;
 int current_scope ;
 int * dump_begin (int ,int*) ;
 int dump_end (int ,int *) ;
 int dump_node (scalar_t__,int,int *) ;
 scalar_t__ errorcount ;
 int * ext_block ;
 scalar_t__ external_scope ;
 scalar_t__ flag_syntax_only ;
 int gcc_assert (int) ;
 int parse_in ;
 scalar_t__ pch_file ;
 int * pop_scope () ;
 scalar_t__ sorrycount ;
 scalar_t__ static_ctors ;
 scalar_t__ static_dtors ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
c_write_global_declarations (void)
{
  tree t;


  if (pch_file)
    return;



  if (flag_syntax_only || errorcount || sorrycount || cpp_errors (parse_in))
    return;


  ext_block = pop_scope ();
  external_scope = 0;
  gcc_assert (!current_scope);

  if (ext_block)
    {
      tree tmp = BLOCK_VARS (ext_block);
      int flags;
      FILE * stream = dump_begin (TDI_tu, &flags);
      if (stream && tmp)
 {
   dump_node (tmp, flags & ~TDF_SLIM, stream);
   dump_end (TDI_tu, stream);
 }
    }



  for (t = all_translation_units; t; t = TREE_CHAIN (t))
    c_write_global_declarations_1 (BLOCK_VARS (DECL_INITIAL (t)));
  c_write_global_declarations_1 (BLOCK_VARS (ext_block));




  build_cdtor ('I', static_ctors); static_ctors = 0;
  build_cdtor ('D', static_dtors); static_dtors = 0;



  cgraph_optimize ();



  if (errorcount == 0 && sorrycount == 0)
    {
      timevar_push (TV_SYMOUT);
      for (t = all_translation_units; t; t = TREE_CHAIN (t))
 c_write_global_declarations_2 (BLOCK_VARS (DECL_INITIAL (t)));
      c_write_global_declarations_2 (BLOCK_VARS (ext_block));
      timevar_pop (TV_SYMOUT);
    }

  ext_block = ((void*)0);
}
