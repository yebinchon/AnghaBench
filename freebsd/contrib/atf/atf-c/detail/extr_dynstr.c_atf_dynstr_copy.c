
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int atf_error_t ;
struct TYPE_4__ {char* m_data; int m_length; int m_datasize; } ;
typedef TYPE_1__ atf_dynstr_t ;


 int atf_no_error () ;
 int atf_no_memory_error () ;
 scalar_t__ malloc (int ) ;
 int memcpy (char*,char*,int ) ;

atf_error_t
atf_dynstr_copy(atf_dynstr_t *dest, const atf_dynstr_t *src)
{
    atf_error_t err;

    dest->m_data = (char *)malloc(src->m_datasize);
    if (dest->m_data == ((void*)0))
        err = atf_no_memory_error();
    else {
        memcpy(dest->m_data, src->m_data, src->m_datasize);
        dest->m_datasize = src->m_datasize;
        dest->m_length = src->m_length;
        err = atf_no_error();
    }

    return err;
}
