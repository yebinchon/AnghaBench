
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* m_what; int m_errno; } ;
typedef TYPE_1__ atf_libc_error_data_t ;
typedef int atf_error_t ;


 int PRE (int ) ;
 TYPE_1__* atf_error_data (int const) ;
 int atf_error_is (int const,char*) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static
void
libc_format(const atf_error_t err, char *buf, size_t buflen)
{
    const atf_libc_error_data_t *data;

    PRE(atf_error_is(err, "libc"));

    data = atf_error_data(err);
    snprintf(buf, buflen, "%s: %s", data->m_what, strerror(data->m_errno));
}
