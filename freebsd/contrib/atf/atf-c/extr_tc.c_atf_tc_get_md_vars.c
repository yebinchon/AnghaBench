
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_tc_t ;
struct TYPE_4__ {int m_vars; } ;


 char** atf_map_to_charpp (int *) ;

char **
atf_tc_get_md_vars(const atf_tc_t *tc)
{
    return atf_map_to_charpp(&tc->pimpl->m_vars);
}
