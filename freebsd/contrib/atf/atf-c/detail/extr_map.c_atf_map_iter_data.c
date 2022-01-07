
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_entry {void* m_value; } ;
struct TYPE_3__ {struct map_entry* m_entry; } ;
typedef TYPE_1__ atf_map_iter_t ;


 int PRE (int ) ;

void *
atf_map_iter_data(const atf_map_iter_t iter)
{
    const struct map_entry *me = iter.m_entry;
    PRE(me != ((void*)0));
    return me->m_value;
}
