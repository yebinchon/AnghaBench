
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct map_entry {int dummy; } ;
struct TYPE_4__ {int m_listiter; struct map_entry const* m_entry; } ;
typedef TYPE_1__ atf_map_citer_t ;


 scalar_t__ atf_list_citer_data (int ) ;
 int atf_list_citer_next (int ) ;

atf_map_citer_t
atf_map_citer_next(const atf_map_citer_t citer)
{
    atf_map_citer_t newciter;

    newciter = citer;
    newciter.m_listiter = atf_list_citer_next(citer.m_listiter);
    newciter.m_entry = ((const struct map_entry *)
                        atf_list_citer_data(newciter.m_listiter));

    return newciter;
}
