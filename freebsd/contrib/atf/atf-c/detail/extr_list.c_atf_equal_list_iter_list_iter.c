
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ m_list; scalar_t__ m_entry; } ;
typedef TYPE_1__ atf_list_iter_t ;



bool
atf_equal_list_iter_list_iter(const atf_list_iter_t i1,
                              const atf_list_iter_t i2)
{
    return i1.m_list == i2.m_list && i1.m_entry == i2.m_entry;
}
