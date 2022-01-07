
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ YY_CURRENT_BUFFER ;
 int * YY_CURRENT_BUFFER_LVALUE ;
 int null__delete_buffer (scalar_t__) ;
 int null_free (int *) ;
 int null_pop_buffer_state () ;
 int * yy_buffer_stack ;
 int yy_init_globals () ;

int null_lex_destroy (void)
{


 while(YY_CURRENT_BUFFER){
  null__delete_buffer(YY_CURRENT_BUFFER );
  YY_CURRENT_BUFFER_LVALUE = ((void*)0);
  null_pop_buffer_state();
 }


 null_free((yy_buffer_stack) );
 (yy_buffer_stack) = ((void*)0);



    yy_init_globals( );

    return 0;
}
