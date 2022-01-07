
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_common_write_pch () ;
 int cgraph_finalize_compilation_unit () ;
 scalar_t__ current_scope ;
 scalar_t__ file_scope ;
 int finish_fname_decls () ;
 int maybe_apply_pending_pragma_weaks () ;
 scalar_t__ pch_file ;
 int pop_scope () ;

void
pop_file_scope (void)
{


  while (current_scope != file_scope)
    pop_scope ();




  finish_fname_decls ();



  if (pch_file)
    {
      c_common_write_pch ();
      return;
    }


  pop_scope ();
  file_scope = 0;

  maybe_apply_pending_pragma_weaks ();
  cgraph_finalize_compilation_unit ();
}
