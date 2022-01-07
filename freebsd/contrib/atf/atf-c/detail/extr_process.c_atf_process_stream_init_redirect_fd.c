
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_fd; int m_type; } ;
typedef TYPE_1__ atf_process_stream_t ;
typedef int atf_error_t ;


 int POST (int ) ;
 int atf_no_error () ;
 int atf_process_stream_type_redirect_fd ;
 int stream_is_valid (TYPE_1__*) ;

atf_error_t
atf_process_stream_init_redirect_fd(atf_process_stream_t *sb,
                                    const int fd)
{
    sb->m_type = atf_process_stream_type_redirect_fd;
    sb->m_fd = fd;

    POST(stream_is_valid(sb));
    return atf_no_error();
}
