
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_type; } ;
typedef TYPE_1__ atf_process_stream_t ;


 int PRE (int ) ;
 int stream_is_valid (TYPE_1__ const*) ;

int
atf_process_stream_type(const atf_process_stream_t *sb)
{
    PRE(stream_is_valid(sb));

    return sb->m_type;
}
