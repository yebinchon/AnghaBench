
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list_entry {int m_next; } ;
struct TYPE_4__ {struct list_entry* m_begin; } ;
typedef TYPE_1__ atf_list_t ;
typedef int atf_list_iter_t ;


 int entry_to_iter (TYPE_1__*,int ) ;

atf_list_iter_t
atf_list_begin(atf_list_t *l)
{
    struct list_entry *le = l->m_begin;
    return entry_to_iter(l, le->m_next);
}
