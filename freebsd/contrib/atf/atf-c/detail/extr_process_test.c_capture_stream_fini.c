
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; int m_sb; } ;
struct capture_stream {TYPE_1__ m_base; int m_msg; } ;


 int ATF_CHECK (int) ;
 int UNREACHABLE ;
 int atf_process_stream_fini (int *) ;
 int atf_utils_grep_string (char*,int ) ;
 int free (int ) ;



__attribute__((used)) static
void
capture_stream_fini(void *v)
{
    struct capture_stream *s = v;

    switch (s->m_base.m_type) {
    case 128:
        ATF_CHECK(atf_utils_grep_string("stdout: msg", s->m_msg));
        ATF_CHECK(!atf_utils_grep_string("stderr: msg", s->m_msg));
        break;
    case 129:
        ATF_CHECK(!atf_utils_grep_string("stdout: msg", s->m_msg));
        ATF_CHECK(atf_utils_grep_string("stderr: msg", s->m_msg));
        break;
    default:
        UNREACHABLE;
    }

    free(s->m_msg);
    atf_process_stream_fini(&s->m_base.m_sb);
}
