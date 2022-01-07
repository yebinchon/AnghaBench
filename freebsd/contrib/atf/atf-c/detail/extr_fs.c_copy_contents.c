
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_data; } ;
typedef TYPE_1__ atf_fs_path_t ;
typedef int atf_error_t ;


 int atf_dynstr_cstring (int *) ;
 scalar_t__ atf_dynstr_length (int *) ;
 int atf_no_error () ;
 int atf_no_memory_error () ;
 scalar_t__ malloc (scalar_t__) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static
atf_error_t
copy_contents(const atf_fs_path_t *p, char **buf)
{
    atf_error_t err;
    char *str;

    str = (char *)malloc(atf_dynstr_length(&p->m_data) + 1);
    if (str == ((void*)0))
        err = atf_no_memory_error();
    else {
        strcpy(str, atf_dynstr_cstring(&p->m_data));
        *buf = str;
        err = atf_no_error();
    }

    return err;
}
