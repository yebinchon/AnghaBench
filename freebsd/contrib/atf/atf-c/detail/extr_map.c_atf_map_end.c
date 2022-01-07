
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m_list; } ;
typedef TYPE_1__ atf_map_t ;
struct TYPE_6__ {int m_listiter; int * m_entry; TYPE_1__* m_map; } ;
typedef TYPE_2__ atf_map_iter_t ;


 int atf_list_end (int *) ;

atf_map_iter_t
atf_map_end(atf_map_t *m)
{
    atf_map_iter_t iter;
    iter.m_map = m;
    iter.m_entry = ((void*)0);
    iter.m_listiter = atf_list_end(&m->m_list);
    return iter;
}
