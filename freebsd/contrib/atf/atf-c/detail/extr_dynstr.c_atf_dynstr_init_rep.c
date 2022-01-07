
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int atf_error_t ;
struct TYPE_3__ {size_t m_datasize; char* m_data; size_t m_length; } ;
typedef TYPE_1__ atf_dynstr_t ;


 size_t SIZE_MAX ;
 int atf_no_error () ;
 int atf_no_memory_error () ;
 scalar_t__ malloc (size_t) ;
 int memset (char*,char,size_t) ;

atf_error_t
atf_dynstr_init_rep(atf_dynstr_t *ad, size_t len, char ch)
{
    atf_error_t err;

    if (len == SIZE_MAX) {
        err = atf_no_memory_error();
        goto out;
    }

    ad->m_datasize = (len + 1) * sizeof(char);
    ad->m_data = (char *)malloc(ad->m_datasize);
    if (ad->m_data == ((void*)0)) {
        err = atf_no_memory_error();
        goto out;
    }

    memset(ad->m_data, ch, len);
    ad->m_data[len] = '\0';
    ad->m_length = len;
    err = atf_no_error();

out:
    return err;
}
