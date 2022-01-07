
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* m_data; scalar_t__ m_length; } ;
typedef TYPE_1__ atf_dynstr_t ;



void
atf_dynstr_clear(atf_dynstr_t *ad)
{
    ad->m_data[0] = '\0';
    ad->m_length = 0;
}
