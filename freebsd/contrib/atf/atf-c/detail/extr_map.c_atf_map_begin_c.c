
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m_list; } ;
typedef TYPE_1__ atf_map_t ;
struct TYPE_6__ {int m_listiter; int m_entry; TYPE_1__ const* m_map; } ;
typedef TYPE_2__ atf_map_citer_t ;


 int atf_list_begin_c (int *) ;
 int atf_list_citer_data (int ) ;

atf_map_citer_t
atf_map_begin_c(const atf_map_t *m)
{
    atf_map_citer_t citer;
    citer.m_map = m;
    citer.m_listiter = atf_list_begin_c(&m->m_list);
    citer.m_entry = atf_list_citer_data(citer.m_listiter);
    return citer;
}
