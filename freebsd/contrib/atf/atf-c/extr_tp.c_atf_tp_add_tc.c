
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_tp_t ;
typedef int atf_tc_t ;
typedef int atf_error_t ;
struct TYPE_5__ {int m_tcs; } ;


 int POST (int ) ;
 int PRE (int ) ;
 int atf_list_append (int *,int *,int) ;
 int atf_tc_get_ident (int *) ;
 int * find_tc (TYPE_2__*,int ) ;

atf_error_t
atf_tp_add_tc(atf_tp_t *tp, atf_tc_t *tc)
{
    atf_error_t err;

    PRE(find_tc(tp, atf_tc_get_ident(tc)) == ((void*)0));

    err = atf_list_append(&tp->pimpl->m_tcs, tc, 0);

    POST(find_tc(tp, atf_tc_get_ident(tc)) != ((void*)0));

    return err;
}
