
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {void* m_object; } ;
struct TYPE_3__ {struct list_entry* m_entry; } ;
typedef TYPE_1__ atf_list_iter_t ;


 int PRE (int ) ;

void *
atf_list_iter_data(const atf_list_iter_t iter)
{
    const struct list_entry *le = iter.m_entry;
    PRE(le != ((void*)0));
    return le->m_object;
}
