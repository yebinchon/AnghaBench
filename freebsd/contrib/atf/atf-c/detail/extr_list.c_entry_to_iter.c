
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {int dummy; } ;
typedef int atf_list_t ;
struct TYPE_3__ {struct list_entry* m_entry; int * m_list; } ;
typedef TYPE_1__ atf_list_iter_t ;



__attribute__((used)) static
atf_list_iter_t
entry_to_iter(atf_list_t *l, struct list_entry *le)
{
    atf_list_iter_t iter;
    iter.m_list = l;
    iter.m_entry = le;
    return iter;
}
