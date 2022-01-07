
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct map_entry {int m_managed; void* m_value; int m_key; } ;
struct TYPE_8__ {int m_list; } ;
typedef TYPE_1__ atf_map_t ;
struct TYPE_9__ {struct map_entry* m_entry; } ;
typedef TYPE_2__ atf_map_iter_t ;
typedef int atf_error_t ;


 int INV (int) ;
 scalar_t__ atf_equal_map_iter_map_iter (TYPE_2__,int ) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_list_append (int *,struct map_entry*,int) ;
 int atf_map_end (TYPE_1__*) ;
 TYPE_2__ atf_map_find (TYPE_1__*,char const*) ;
 int atf_no_error () ;
 int atf_no_memory_error () ;
 int free (void*) ;
 struct map_entry* new_entry (char const*,void*,int) ;
 scalar_t__ strcmp (int ,char const*) ;

atf_error_t
atf_map_insert(atf_map_t *m, const char *key, void *value, bool managed)
{
    struct map_entry *me;
    atf_error_t err;
    atf_map_iter_t iter;

    iter = atf_map_find(m, key);
    if (atf_equal_map_iter_map_iter(iter, atf_map_end(m))) {
        me = new_entry(key, value, managed);
        if (me == ((void*)0))
            err = atf_no_memory_error();
        else {
            err = atf_list_append(&m->m_list, me, 0);
            if (atf_is_error(err)) {
                if (managed)
                    free(value);
            }
        }
    } else {
        me = iter.m_entry;
        if (me->m_managed)
            free(me->m_value);

        INV(strcmp(me->m_key, key) == 0);
        me->m_value = value;
        me->m_managed = managed;

        err = atf_no_error();
    }

    return err;
}
