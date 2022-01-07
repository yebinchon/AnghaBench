
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_status; } ;
typedef TYPE_1__ atf_process_status_t ;


 int PRE (int ) ;
 int WEXITSTATUS (int) ;
 int atf_process_status_exited (TYPE_1__ const*) ;

int
atf_process_status_exitstatus(const atf_process_status_t *s)
{
    PRE(atf_process_status_exited(s));
    int mutable_status = s->m_status;
    return WEXITSTATUS(mutable_status);
}
