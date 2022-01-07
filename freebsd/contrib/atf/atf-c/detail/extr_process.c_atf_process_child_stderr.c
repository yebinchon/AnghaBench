
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_stderr; } ;
typedef TYPE_1__ atf_process_child_t ;


 int PRE (int) ;

int
atf_process_child_stderr(atf_process_child_t *c)
{
    PRE(c->m_stderr != -1);
    return c->m_stderr;
}
