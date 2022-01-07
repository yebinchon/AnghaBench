
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; int m_sb; int * m_sb_ptr; } ;
struct inherit_stream {int m_old_fd; int m_fd; TYPE_1__ m_base; } ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int ,int ) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int RE (int ) ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int UNREACHABLE ;
 int atf_process_stream_init_inherit (int *) ;
 int close (int ) ;
 int dup (int ) ;
 int open (char const*,int,int) ;



__attribute__((used)) static
void
inherit_stream_init(void *v)
{
    struct inherit_stream *s = v;
    const char *name;

    s->m_base.m_sb_ptr = &s->m_base.m_sb;
    RE(atf_process_stream_init_inherit(&s->m_base.m_sb));

    switch (s->m_base.m_type) {
    case 128:
        s->m_fd = STDOUT_FILENO;
        name = "stdout";
        break;
    case 129:
        s->m_fd = STDERR_FILENO;
        name = "stderr";
        break;
    default:
        UNREACHABLE;
        name = ((void*)0);
    }

    s->m_old_fd = dup(s->m_fd);
    ATF_REQUIRE(s->m_old_fd != -1);
    ATF_REQUIRE(close(s->m_fd) != -1);
    ATF_REQUIRE_EQ(open(name, O_WRONLY | O_CREAT | O_TRUNC, 0644),
                   s->m_fd);
}
