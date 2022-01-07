
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NEED_INDICATE_EXEC_STACK ;
 int emit_pic_helper () ;
 int file_end_indicate_exec_stack () ;
 int pic_helper_emitted_p ;
 scalar_t__* pic_helper_symbol_name ;

__attribute__((used)) static void
sparc_file_end (void)
{

  if (pic_helper_symbol_name[0] && !pic_helper_emitted_p)
    emit_pic_helper ();

  if (NEED_INDICATE_EXEC_STACK)
    file_end_indicate_exec_stack ();
}
