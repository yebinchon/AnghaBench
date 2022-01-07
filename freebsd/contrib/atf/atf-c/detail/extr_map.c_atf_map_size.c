
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_list; } ;
typedef TYPE_1__ atf_map_t ;


 size_t atf_list_size (int *) ;

size_t
atf_map_size(const atf_map_t *m)
{
    return atf_list_size(&m->m_list);
}
