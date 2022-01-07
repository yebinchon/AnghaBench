
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t m_length; } ;
typedef TYPE_1__ atf_dynstr_t ;



size_t
atf_dynstr_length(const atf_dynstr_t *ad)
{
    return ad->m_length;
}
