
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; } ;
struct capture_stream {void* m_msg; TYPE_1__ m_base; } ;
typedef int atf_process_child_t ;


 int UNREACHABLE ;
 int atf_process_child_stderr (int *) ;
 int atf_process_child_stdout (int *) ;
 void* atf_utils_readline (int ) ;



__attribute__((used)) static
void
capture_stream_process(void *v, atf_process_child_t *c)
{
    struct capture_stream *s = v;

    switch (s->m_base.m_type) {
    case 128:
        s->m_msg = atf_utils_readline(atf_process_child_stdout(c));
        break;
    case 129:
        s->m_msg = atf_utils_readline(atf_process_child_stderr(c));
        break;
    default:
        UNREACHABLE;
    }
}
