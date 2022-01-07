
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; int m_sb; int * m_sb_ptr; } ;
struct redirect_path_stream {int m_path; TYPE_1__ m_base; } ;


 int RE (int ) ;
 int UNREACHABLE ;
 int atf_fs_path_init_fmt (int *,char*) ;
 int atf_process_stream_init_redirect_path (int *,int *) ;



__attribute__((used)) static
void
redirect_path_stream_init(void *v)
{
    struct redirect_path_stream *s = v;

    switch (s->m_base.m_type) {
    case 128:
        RE(atf_fs_path_init_fmt(&s->m_path, "stdout"));
        break;
    case 129:
        RE(atf_fs_path_init_fmt(&s->m_path, "stderr"));
        break;
    default:
        UNREACHABLE;
    }

    s->m_base.m_sb_ptr = &s->m_base.m_sb;
    RE(atf_process_stream_init_redirect_path(&s->m_base.m_sb, &s->m_path));
}
