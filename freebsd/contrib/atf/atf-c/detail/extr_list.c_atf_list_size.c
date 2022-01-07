
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t m_size; } ;
typedef TYPE_1__ atf_list_t ;



size_t
atf_list_size(const atf_list_t *l)
{
    return l->m_size;
}
