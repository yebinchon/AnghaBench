
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {struct list_entry* m_next; } ;
struct TYPE_3__ {int m_size; scalar_t__ m_begin; } ;
typedef TYPE_1__ atf_list_t ;


 int INV (int) ;
 int delete_entry (struct list_entry*) ;

void
atf_list_fini(atf_list_t *l)
{
    struct list_entry *le;
    size_t freed;

    le = (struct list_entry *)l->m_begin;
    freed = 0;
    while (le != ((void*)0)) {
        struct list_entry *lenext;

        lenext = le->m_next;
        delete_entry(le);
        le = lenext;

        freed++;
    }
    INV(freed == l->m_size + 2);
}
