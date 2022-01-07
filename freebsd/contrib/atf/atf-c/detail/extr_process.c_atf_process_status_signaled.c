
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_status; } ;
typedef TYPE_1__ atf_process_status_t ;


 int WIFSIGNALED (int) ;

bool
atf_process_status_signaled(const atf_process_status_t *s)
{
    int mutable_status = s->m_status;
    return WIFSIGNALED(mutable_status);
}
