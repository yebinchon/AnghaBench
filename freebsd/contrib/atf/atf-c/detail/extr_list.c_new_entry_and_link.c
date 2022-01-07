
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {struct list_entry* m_prev; struct list_entry* m_next; } ;


 struct list_entry* new_entry (void*,int) ;

__attribute__((used)) static
struct list_entry *
new_entry_and_link(void *object, bool managed, struct list_entry *prev,
                   struct list_entry *next)
{
    struct list_entry *le;

    le = new_entry(object, managed);
    if (le != ((void*)0)) {
        le->m_prev = prev;
        le->m_next = next;

        prev->m_next = le;
        next->m_prev = le;
    }

    return le;
}
