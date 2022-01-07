
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_tc_t ;
typedef int atf_error_t ;
struct TYPE_5__ {int (* m_cleanup ) (TYPE_2__ const*) ;} ;


 int atf_no_error () ;
 int stub1 (TYPE_2__ const*) ;

atf_error_t
atf_tc_cleanup(const atf_tc_t *tc)
{
    if (tc->pimpl->m_cleanup != ((void*)0))
        tc->pimpl->m_cleanup(tc);
    return atf_no_error();
}
