
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_entry {char const* m_key; } ;
struct TYPE_3__ {struct map_entry* m_entry; } ;
typedef TYPE_1__ atf_map_iter_t ;


 int PRE (int ) ;

const char *
atf_map_iter_key(const atf_map_iter_t iter)
{
    const struct map_entry *me = iter.m_entry;
    PRE(me != ((void*)0));
    return me->m_key;
}
