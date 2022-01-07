
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pimpl; } ;
typedef TYPE_1__ atf_tc_t ;
struct TYPE_5__ {int m_vars; } ;


 int atf_map_fini (int *) ;
 int free (TYPE_2__*) ;

void
atf_tc_fini(atf_tc_t *tc)
{
    atf_map_fini(&tc->pimpl->m_vars);
    free(tc->pimpl);
}
