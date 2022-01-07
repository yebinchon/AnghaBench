
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_status; } ;
typedef TYPE_1__ atf_process_status_t ;


 int PRE (int ) ;
 int WCOREDUMP (int) ;
 int atf_process_status_signaled (TYPE_1__ const*) ;

bool
atf_process_status_coredump(const atf_process_status_t *s)
{
    PRE(atf_process_status_signaled(s));




    return 0;

}
