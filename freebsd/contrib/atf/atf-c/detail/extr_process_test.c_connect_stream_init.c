
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; int m_sb; int * m_sb_ptr; } ;
struct connect_stream {int m_fd; TYPE_1__ m_base; } ;


 int ATF_REQUIRE (int) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int RE (int ) ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int UNREACHABLE ;
 int atf_process_stream_init_connect (int *,int,int) ;
 void* open (char*,int,int) ;



__attribute__((used)) static
void
connect_stream_init(void *v)
{
    struct connect_stream *s = v;
    int src_fd;

    switch (s->m_base.m_type) {
    case 128:
        src_fd = STDOUT_FILENO;
        s->m_fd = open("stdout", O_WRONLY | O_CREAT | O_TRUNC, 0644);
        break;
    case 129:
        src_fd = STDERR_FILENO;
        s->m_fd = open("stderr", O_WRONLY | O_CREAT | O_TRUNC, 0644);
        break;
    default:
        UNREACHABLE;
        src_fd = -1;
    }
    ATF_REQUIRE(s->m_fd != -1);

    s->m_base.m_sb_ptr = &s->m_base.m_sb;
    RE(atf_process_stream_init_connect(&s->m_base.m_sb, src_fd, s->m_fd));
}
