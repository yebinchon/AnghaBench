
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_sb; int * m_sb_ptr; } ;
struct capture_stream {int * m_msg; TYPE_1__ m_base; } ;


 int RE (int ) ;
 int atf_process_stream_init_capture (int *) ;

__attribute__((used)) static
void
capture_stream_init(void *v)
{
    struct capture_stream *s = v;

    s->m_base.m_sb_ptr = &s->m_base.m_sb;
    RE(atf_process_stream_init_capture(&s->m_base.m_sb));
    s->m_msg = ((void*)0);
}
