
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_entry {int m_managed; void* m_value; int * m_key; } ;


 int free (struct map_entry*) ;
 scalar_t__ malloc (int) ;
 int * strdup (char const*) ;

__attribute__((used)) static
struct map_entry *
new_entry(const char *key, void *value, bool managed)
{
    struct map_entry *me;

    me = (struct map_entry *)malloc(sizeof(*me));
    if (me != ((void*)0)) {
        me->m_key = strdup(key);
        if (me->m_key == ((void*)0)) {
            free(me);
            me = ((void*)0);
        } else {
            me->m_value = value;
            me->m_managed = managed;
        }
    }

    return me;
}
