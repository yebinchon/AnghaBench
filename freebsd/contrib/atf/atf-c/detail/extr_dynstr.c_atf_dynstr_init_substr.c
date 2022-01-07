
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int atf_error_t ;
struct TYPE_5__ {size_t m_length; scalar_t__ m_data; } ;
typedef TYPE_1__ atf_dynstr_t ;


 int atf_dynstr_init_raw (TYPE_1__*,scalar_t__,size_t) ;
 size_t atf_dynstr_npos ;

atf_error_t
atf_dynstr_init_substr(atf_dynstr_t *ad, const atf_dynstr_t *src,
                       size_t beg, size_t end)
{
    if (beg > src->m_length)
        beg = src->m_length;

    if (end == atf_dynstr_npos || end > src->m_length)
        end = src->m_length;

    return atf_dynstr_init_raw(ad, src->m_data + beg, end - beg);
}
