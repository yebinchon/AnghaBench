
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_type; int m_sb; } ;
struct redirect_path_stream {TYPE_1__ m_base; int m_path; } ;


 int atf_fs_path_fini (int *) ;
 int atf_process_stream_fini (int *) ;
 int check_file (int ) ;

__attribute__((used)) static
void
redirect_path_stream_fini(void *v)
{
    struct redirect_path_stream *s = v;

    atf_process_stream_fini(&s->m_base.m_sb);

    atf_fs_path_fini(&s->m_path);

    check_file(s->m_base.m_type);
}
