
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_tp_t ;
struct TYPE_4__ {int m_config; } ;


 char** atf_map_to_charpp (int *) ;

char **
atf_tp_get_config(const atf_tp_t *tp)
{
    return atf_map_to_charpp(&tp->pimpl->m_config);
}
