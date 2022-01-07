
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_data; } ;
typedef TYPE_1__ atf_dynstr_t ;


 scalar_t__ strcmp (int ,int ) ;

bool
atf_equal_dynstr_dynstr(const atf_dynstr_t *s1, const atf_dynstr_t *s2)
{
    return strcmp(s1->m_data, s2->m_data) == 0;
}
