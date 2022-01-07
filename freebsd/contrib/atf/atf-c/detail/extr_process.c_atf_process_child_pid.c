
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_3__ {int m_pid; } ;
typedef TYPE_1__ atf_process_child_t ;



pid_t
atf_process_child_pid(const atf_process_child_t *c)
{
    return c->m_pid;
}
