
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_tc_t ;
typedef int atf_map_citer_t ;
struct TYPE_5__ {int m_vars; } ;


 int INV (int ) ;
 int PRE (int ) ;
 char* atf_map_citer_data (int ) ;
 int atf_map_find_c (int *,char const*) ;
 int atf_tc_has_md_var (TYPE_2__ const*,char const*) ;

const char *
atf_tc_get_md_var(const atf_tc_t *tc, const char *name)
{
    const char *val;
    atf_map_citer_t iter;

    PRE(atf_tc_has_md_var(tc, name));
    iter = atf_map_find_c(&tc->pimpl->m_vars, name);
    val = atf_map_citer_data(iter);
    INV(val != ((void*)0));

    return val;
}
