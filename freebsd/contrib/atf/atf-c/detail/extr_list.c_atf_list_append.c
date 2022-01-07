
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {struct list_entry* m_prev; } ;
struct TYPE_3__ {int m_size; scalar_t__ m_end; } ;
typedef TYPE_1__ atf_list_t ;
typedef int atf_error_t ;


 int atf_no_error () ;
 int atf_no_memory_error () ;
 struct list_entry* new_entry_and_link (void*,int,struct list_entry*,struct list_entry*) ;

atf_error_t
atf_list_append(atf_list_t *l, void *data, bool managed)
{
    struct list_entry *le, *next, *prev;
    atf_error_t err;

    next = (struct list_entry *)l->m_end;
    prev = next->m_prev;
    le = new_entry_and_link(data, managed, prev, next);
    if (le == ((void*)0))
        err = atf_no_memory_error();
    else {
        l->m_size++;
        err = atf_no_error();
    }

    return err;
}
