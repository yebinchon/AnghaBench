
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_tc_t ;
struct TYPE_4__ {char const* m_ident; } ;



const char *
atf_tc_get_ident(const atf_tc_t *tc)
{
    return tc->pimpl->m_ident;
}
