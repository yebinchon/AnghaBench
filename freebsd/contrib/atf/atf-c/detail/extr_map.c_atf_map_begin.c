
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m_list; } ;
typedef TYPE_1__ atf_map_t ;
struct TYPE_6__ {int m_listiter; int m_entry; TYPE_1__* m_map; } ;
typedef TYPE_2__ atf_map_iter_t ;


 int atf_list_begin (int *) ;
 int atf_list_iter_data (int ) ;

atf_map_iter_t
atf_map_begin(atf_map_t *m)
{
    atf_map_iter_t iter;
    iter.m_map = m;
    iter.m_listiter = atf_list_begin(&m->m_list);
    iter.m_entry = atf_list_iter_data(iter.m_listiter);
    return iter;
}
