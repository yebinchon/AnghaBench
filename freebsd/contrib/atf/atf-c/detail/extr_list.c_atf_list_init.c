
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {struct list_entry* m_prev; struct list_entry* m_next; } ;
struct TYPE_3__ {struct list_entry* m_end; struct list_entry* m_begin; scalar_t__ m_size; } ;
typedef TYPE_1__ atf_list_t ;
typedef int atf_error_t ;


 int atf_no_error () ;
 int atf_no_memory_error () ;
 int free (struct list_entry*) ;
 struct list_entry* new_entry (int *,int) ;

atf_error_t
atf_list_init(atf_list_t *l)
{
    struct list_entry *lebeg, *leend;

    lebeg = new_entry(((void*)0), 0);
    if (lebeg == ((void*)0)) {
        return atf_no_memory_error();
    }

    leend = new_entry(((void*)0), 0);
    if (leend == ((void*)0)) {
        free(lebeg);
        return atf_no_memory_error();
    }

    lebeg->m_next = leend;
    lebeg->m_prev = ((void*)0);

    leend->m_next = ((void*)0);
    leend->m_prev = lebeg;

    l->m_size = 0;
    l->m_begin = lebeg;
    l->m_end = leend;

    return atf_no_error();
}
