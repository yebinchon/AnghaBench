
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stream_prepare_t ;
typedef int pid_t ;
struct TYPE_4__ {int m_stderr; int m_stdout; int m_pid; } ;
typedef TYPE_1__ atf_process_child_t ;
typedef int atf_error_t ;


 scalar_t__ atf_is_error (int ) ;
 int atf_process_child_init (TYPE_1__*) ;
 int parent_connect (int const*,int *) ;

__attribute__((used)) static
atf_error_t
do_parent(atf_process_child_t *c,
          const pid_t pid,
          const stream_prepare_t *outsp,
          const stream_prepare_t *errsp)
{
    atf_error_t err;

    err = atf_process_child_init(c);
    if (atf_is_error(err))
        goto out;

    c->m_pid = pid;

    parent_connect(outsp, &c->m_stdout);
    parent_connect(errsp, &c->m_stderr);

out:
    return err;
}
