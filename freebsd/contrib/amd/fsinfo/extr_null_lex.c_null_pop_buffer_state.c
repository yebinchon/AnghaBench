
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ YY_CURRENT_BUFFER ;
 int * YY_CURRENT_BUFFER_LVALUE ;
 int null__delete_buffer (scalar_t__) ;
 int null__load_buffer_state () ;
 scalar_t__ yy_buffer_stack_top ;
 int yy_did_buffer_switch_on_eof ;

void null_pop_buffer_state (void)
{
     if (!YY_CURRENT_BUFFER)
  return;

 null__delete_buffer(YY_CURRENT_BUFFER );
 YY_CURRENT_BUFFER_LVALUE = ((void*)0);
 if ((yy_buffer_stack_top) > 0)
  --(yy_buffer_stack_top);

 if (YY_CURRENT_BUFFER) {
  null__load_buffer_state( );
  (yy_did_buffer_switch_on_eof) = 1;
 }
}
