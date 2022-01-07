
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct map_entry {int dummy; } ;
struct TYPE_4__ {int m_listiter; struct map_entry* m_entry; } ;
typedef TYPE_1__ atf_map_iter_t ;


 scalar_t__ atf_list_iter_data (int ) ;
 int atf_list_iter_next (int ) ;

atf_map_iter_t
atf_map_iter_next(const atf_map_iter_t iter)
{
    atf_map_iter_t newiter;

    newiter = iter;
    newiter.m_listiter = atf_list_iter_next(iter.m_listiter);
    newiter.m_entry = ((struct map_entry *)
                       atf_list_iter_data(newiter.m_listiter));

    return newiter;
}
