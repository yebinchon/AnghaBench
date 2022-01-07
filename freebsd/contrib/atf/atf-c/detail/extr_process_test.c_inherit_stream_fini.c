
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; int m_sb; } ;
struct inherit_stream {TYPE_1__ m_base; int m_old_fd; int m_fd; } ;


 int ATF_REQUIRE (int) ;
 int atf_process_stream_fini (int *) ;
 int check_file (int ) ;
 int close (int ) ;
 int dup2 (int ,int ) ;

__attribute__((used)) static
void
inherit_stream_fini(void *v)
{
    struct inherit_stream *s = v;

    ATF_REQUIRE(dup2(s->m_old_fd, s->m_fd) != -1);
    ATF_REQUIRE(close(s->m_old_fd) != -1);

    atf_process_stream_fini(&s->m_base.m_sb);

    check_file(s->m_base.m_type);
}
