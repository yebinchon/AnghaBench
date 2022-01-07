
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* m_pipefds; int m_sb; } ;
typedef TYPE_1__ stream_prepare_t ;


 int UNREACHABLE ;
 int atf_process_stream_type (int ) ;
 int const atf_process_stream_type_capture ;
 int const atf_process_stream_type_connect ;
 int const atf_process_stream_type_inherit ;
 int const atf_process_stream_type_redirect_fd ;
 int const atf_process_stream_type_redirect_path ;
 int close (int) ;

__attribute__((used)) static
void
parent_connect(const stream_prepare_t *sp, int *fd)
{
    const int type = atf_process_stream_type(sp->m_sb);

    if (type == atf_process_stream_type_capture) {
        close(sp->m_pipefds[1]);
        *fd = sp->m_pipefds[0];
    } else if (type == atf_process_stream_type_connect) {

    } else if (type == atf_process_stream_type_inherit) {

    } else if (type == atf_process_stream_type_redirect_fd) {

    } else if (type == atf_process_stream_type_redirect_path) {

    } else {
        UNREACHABLE;
    }
}
