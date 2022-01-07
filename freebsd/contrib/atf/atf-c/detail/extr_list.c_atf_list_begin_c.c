
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list_entry {int m_next; } ;
struct TYPE_4__ {struct list_entry* m_begin; } ;
typedef TYPE_1__ atf_list_t ;
typedef int atf_list_citer_t ;


 int entry_to_citer (TYPE_1__ const*,int ) ;

atf_list_citer_t
atf_list_begin_c(const atf_list_t *l)
{
    const struct list_entry *le = l->m_begin;
    return entry_to_citer(l, le->m_next);
}
