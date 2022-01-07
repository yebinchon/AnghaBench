
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* m_data; } ;
typedef TYPE_1__ atf_dynstr_t ;



const char *
atf_dynstr_cstring(const atf_dynstr_t *ad)
{
    return ad->m_data;
}
