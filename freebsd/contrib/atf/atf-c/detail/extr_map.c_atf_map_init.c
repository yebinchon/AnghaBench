
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_list; } ;
typedef TYPE_1__ atf_map_t ;
typedef int atf_error_t ;


 int atf_list_init (int *) ;

atf_error_t
atf_map_init(atf_map_t *m)
{
    return atf_list_init(&m->m_list);
}
