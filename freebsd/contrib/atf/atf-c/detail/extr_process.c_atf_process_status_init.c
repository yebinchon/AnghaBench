
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_status; } ;
typedef TYPE_1__ atf_process_status_t ;
typedef int atf_error_t ;


 int atf_no_error () ;

atf_error_t
atf_process_status_init(atf_process_status_t *s, int status)
{
    s->m_status = status;

    return atf_no_error();
}
