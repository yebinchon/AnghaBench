
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int atf_process_status_t ;
struct TYPE_4__ {int m_pid; } ;
typedef TYPE_1__ atf_process_child_t ;
typedef int atf_error_t ;


 int atf_libc_error (int ,char*,int ) ;
 int atf_process_child_fini (TYPE_1__*) ;
 int atf_process_status_init (int *,int) ;
 int errno ;
 int waitpid (int ,int*,int ) ;

atf_error_t
atf_process_child_wait(atf_process_child_t *c, atf_process_status_t *s)
{
    atf_error_t err;
    int status;

    if (waitpid(c->m_pid, &status, 0) == -1)
        err = atf_libc_error(errno, "Failed waiting for process %d",
                             c->m_pid);
    else {
        atf_process_child_fini(c);
        err = atf_process_status_init(s, status);
    }

    return err;
}
