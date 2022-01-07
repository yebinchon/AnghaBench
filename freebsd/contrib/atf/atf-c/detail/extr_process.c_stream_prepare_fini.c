
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * m_pipefds; scalar_t__ m_pipefds_ok; } ;
typedef TYPE_1__ stream_prepare_t ;


 int close (int ) ;

__attribute__((used)) static
void
stream_prepare_fini(stream_prepare_t *sp)
{
    if (sp->m_pipefds_ok) {
        close(sp->m_pipefds[0]);
        close(sp->m_pipefds[1]);
    }
}
