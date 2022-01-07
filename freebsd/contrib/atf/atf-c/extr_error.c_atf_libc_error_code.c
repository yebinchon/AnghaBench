
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atf_libc_error_data {int m_errno; } ;
typedef int atf_error_t ;


 int PRE (int ) ;
 struct atf_libc_error_data* atf_error_data (int const) ;
 int atf_error_is (int const,char*) ;

int
atf_libc_error_code(const atf_error_t err)
{
    const struct atf_libc_error_data *data;

    PRE(atf_error_is(err, "libc"));

    data = atf_error_data(err);

    return data->m_errno;
}
