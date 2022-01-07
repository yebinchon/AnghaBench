
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_end; } ;
typedef TYPE_1__ atf_list_t ;
typedef int atf_list_iter_t ;


 int entry_to_iter (TYPE_1__*,int ) ;

atf_list_iter_t
atf_list_end(atf_list_t *l)
{
    return entry_to_iter(l, l->m_end);
}
