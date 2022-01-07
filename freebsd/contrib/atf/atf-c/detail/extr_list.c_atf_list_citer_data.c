
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {void const* m_object; } ;
struct TYPE_3__ {struct list_entry* m_entry; } ;
typedef TYPE_1__ atf_list_citer_t ;


 int PRE (int ) ;

const void *
atf_list_citer_data(const atf_list_citer_t citer)
{
    const struct list_entry *le = citer.m_entry;
    PRE(le != ((void*)0));
    return le->m_object;
}
