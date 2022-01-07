
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int atf_error_t ;
struct TYPE_3__ {char* m_data; size_t m_datasize; size_t m_length; } ;
typedef TYPE_1__ atf_dynstr_t ;


 int INV (int) ;
 int SIZE_MAX ;
 int atf_no_error () ;
 int atf_no_memory_error () ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,void const*,size_t) ;
 size_t strlen (char*) ;

atf_error_t
atf_dynstr_init_raw(atf_dynstr_t *ad, const void *mem, size_t memlen)
{
    atf_error_t err;

    if (memlen >= SIZE_MAX - 1) {
        err = atf_no_memory_error();
        goto out;
    }

    ad->m_data = (char *)malloc(memlen + 1);
    if (ad->m_data == ((void*)0)) {
        err = atf_no_memory_error();
        goto out;
    }

    ad->m_datasize = memlen + 1;
    memcpy(ad->m_data, mem, memlen);
    ad->m_data[memlen] = '\0';
    ad->m_length = strlen(ad->m_data);
    INV(ad->m_length <= memlen);
    err = atf_no_error();

out:
    return err;
}
