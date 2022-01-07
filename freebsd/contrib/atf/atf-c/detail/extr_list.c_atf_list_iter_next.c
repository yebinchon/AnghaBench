
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list_entry {struct list_entry* m_next; } ;
struct TYPE_4__ {struct list_entry* m_entry; } ;
typedef TYPE_1__ atf_list_iter_t ;


 int PRE (int ) ;

atf_list_iter_t
atf_list_iter_next(const atf_list_iter_t iter)
{
    const struct list_entry *le = iter.m_entry;
    atf_list_iter_t newiter;

    PRE(le != ((void*)0));

    newiter = iter;
    newiter.m_entry = le->m_next;

    return newiter;
}
