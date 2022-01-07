
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_pipefds_ok; int m_pipefds; int const* m_sb; } ;
typedef TYPE_1__ stream_prepare_t ;
typedef int atf_process_stream_t ;
typedef int atf_error_t ;


 int atf_libc_error (int ,char*) ;
 int atf_no_error () ;
 int atf_process_stream_type (int const*) ;
 int const atf_process_stream_type_capture ;
 int errno ;
 int pipe (int ) ;

__attribute__((used)) static
atf_error_t
stream_prepare_init(stream_prepare_t *sp, const atf_process_stream_t *sb)
{
    atf_error_t err;

    const int type = atf_process_stream_type(sb);

    sp->m_sb = sb;
    sp->m_pipefds_ok = 0;

    if (type == atf_process_stream_type_capture) {
        if (pipe(sp->m_pipefds) == -1)
            err = atf_libc_error(errno, "Failed to create pipe");
        else {
            err = atf_no_error();
            sp->m_pipefds_ok = 1;
        }
    } else
        err = atf_no_error();

    return err;
}
