
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_stdout; int m_stderr; } ;
typedef TYPE_1__ atf_process_child_t ;


 int close (int) ;

__attribute__((used)) static
void
atf_process_child_fini(atf_process_child_t *c)
{
    if (c->m_stdout != -1)
        close(c->m_stdout);
    if (c->m_stderr != -1)
        close(c->m_stderr);
}
