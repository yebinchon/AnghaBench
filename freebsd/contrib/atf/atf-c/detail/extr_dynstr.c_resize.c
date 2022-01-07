
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int atf_error_t ;
struct TYPE_3__ {size_t m_datasize; char* m_data; } ;
typedef TYPE_1__ atf_dynstr_t ;


 int PRE (int) ;
 int atf_no_error () ;
 int atf_no_memory_error () ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static
atf_error_t
resize(atf_dynstr_t *ad, size_t newsize)
{
    char *newdata;
    atf_error_t err;

    PRE(newsize > ad->m_datasize);

    newdata = (char *)malloc(newsize);
    if (newdata == ((void*)0)) {
        err = atf_no_memory_error();
    } else {
        strcpy(newdata, ad->m_data);
        free(ad->m_data);
        ad->m_data = newdata;
        ad->m_datasize = newsize;
        err = atf_no_error();
    }

    return err;
}
