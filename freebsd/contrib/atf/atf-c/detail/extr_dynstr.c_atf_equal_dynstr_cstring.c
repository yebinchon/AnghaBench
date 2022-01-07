
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_data; } ;
typedef TYPE_1__ atf_dynstr_t ;


 scalar_t__ strcmp (int ,char const*) ;

bool
atf_equal_dynstr_cstring(const atf_dynstr_t *ad, const char *str)
{
    return strcmp(ad->m_data, str) == 0;
}
