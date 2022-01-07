
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; int m_sb; int * m_sb_ptr; } ;
struct redirect_fd_stream {int m_fd; TYPE_1__ m_base; } ;


 int ATF_REQUIRE (int) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int RE (int ) ;
 int UNREACHABLE ;
 int atf_process_stream_init_redirect_fd (int *,int) ;
 void* open (char*,int,int) ;



__attribute__((used)) static
void
redirect_fd_stream_init(void *v)
{
    struct redirect_fd_stream *s = v;

    switch (s->m_base.m_type) {
    case 128:
        s->m_fd = open("stdout", O_WRONLY | O_CREAT | O_TRUNC, 0644);
        break;
    case 129:
        s->m_fd = open("stderr", O_WRONLY | O_CREAT | O_TRUNC, 0644);
        break;
    default:
        UNREACHABLE;
    }
    ATF_REQUIRE(s->m_fd != -1);

    s->m_base.m_sb_ptr = &s->m_base.m_sb;
    RE(atf_process_stream_init_redirect_fd(&s->m_base.m_sb, s->m_fd));
}
