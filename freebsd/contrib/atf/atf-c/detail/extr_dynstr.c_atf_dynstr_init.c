
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int atf_error_t ;
struct TYPE_3__ {char* m_data; int m_datasize; scalar_t__ m_length; } ;
typedef TYPE_1__ atf_dynstr_t ;


 int atf_no_error () ;
 int atf_no_memory_error () ;
 scalar_t__ malloc (int) ;

atf_error_t
atf_dynstr_init(atf_dynstr_t *ad)
{
    atf_error_t err;

    ad->m_data = (char *)malloc(sizeof(char));
    if (ad->m_data == ((void*)0)) {
        err = atf_no_memory_error();
        goto out;
    }

    ad->m_data[0] = '\0';
    ad->m_datasize = 1;
    ad->m_length = 0;
    err = atf_no_error();

out:
    return err;
}
