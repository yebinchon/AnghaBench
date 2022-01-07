
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 int make_ready_in (int *) ;
 int make_ready_out (int *) ;

__attribute__((used)) static void
engine_clearbuf(br_ssl_engine_context *rc)
{
 make_ready_in(rc);
 make_ready_out(rc);
}
