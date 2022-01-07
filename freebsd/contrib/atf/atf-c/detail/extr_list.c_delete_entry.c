
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {struct list_entry* m_object; scalar_t__ m_managed; } ;


 int free (struct list_entry*) ;

__attribute__((used)) static
void
delete_entry(struct list_entry *le)
{
    if (le->m_managed)
        free(le->m_object);

    free(le);
}
