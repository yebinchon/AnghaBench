
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_entry {void const* m_value; } ;
struct TYPE_3__ {struct map_entry* m_entry; } ;
typedef TYPE_1__ atf_map_citer_t ;


 int PRE (int ) ;

const void *
atf_map_citer_data(const atf_map_citer_t citer)
{
    const struct map_entry *me = citer.m_entry;
    PRE(me != ((void*)0));
    return me->m_value;
}
