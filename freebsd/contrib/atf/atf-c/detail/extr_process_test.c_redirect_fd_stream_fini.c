
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; int m_sb; } ;
struct redirect_fd_stream {TYPE_1__ m_base; int m_fd; } ;


 int ATF_REQUIRE (int) ;
 int atf_process_stream_fini (int *) ;
 int check_file (int ) ;
 int close (int ) ;

__attribute__((used)) static
void
redirect_fd_stream_fini(void *v)
{
    struct redirect_fd_stream *s = v;

    ATF_REQUIRE(close(s->m_fd) != -1);

    atf_process_stream_fini(&s->m_base.m_sb);

    check_file(s->m_base.m_type);
}
