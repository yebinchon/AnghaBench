
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int YY_BUF_SIZE ;
 int YY_CURRENT_BUFFER ;
 int YY_CURRENT_BUFFER_LVALUE ;
 int null__create_buffer (int ,int ) ;
 int null__init_buffer (int ,int *) ;
 int null__load_buffer_state () ;
 int null_ensure_buffer_stack () ;
 int null_in ;

void null_restart (FILE * input_file )
{

 if ( ! YY_CURRENT_BUFFER ){
        null_ensure_buffer_stack ();
  YY_CURRENT_BUFFER_LVALUE =
            null__create_buffer(null_in,YY_BUF_SIZE );
 }

 null__init_buffer(YY_CURRENT_BUFFER,input_file );
 null__load_buffer_state( );
}
