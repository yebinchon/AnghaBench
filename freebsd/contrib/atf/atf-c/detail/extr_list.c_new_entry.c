
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {int m_managed; void* m_object; int * m_next; int m_prev; } ;


 int free (void*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static
struct list_entry *
new_entry(void *object, bool managed)
{
    struct list_entry *le;

    le = (struct list_entry *)malloc(sizeof(*le));
    if (le != ((void*)0)) {
        le->m_prev = le->m_next = ((void*)0);
        le->m_object = object;
        le->m_managed = managed;
    } else
        free(object);

    return le;
}
