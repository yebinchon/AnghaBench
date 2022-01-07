
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_process_stream_t ;


 int PRE (int ) ;
 int stream_is_valid (int *) ;

void
atf_process_stream_fini(atf_process_stream_t *sb)
{
    PRE(stream_is_valid(sb));
}
