
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* m_path; scalar_t__ m_umask; int m_type; } ;
typedef TYPE_1__ invalid_umask_error_data_t ;
typedef int atf_error_t ;


 int PRE (int ) ;
 TYPE_1__* atf_error_data (int const) ;
 int atf_error_is (int const,char*) ;
 int snprintf (char*,size_t,char*,char*,char*,unsigned int) ;
 char* stat_type_to_string (int ) ;

__attribute__((used)) static
void
invalid_umask_format(const atf_error_t err, char *buf, size_t buflen)
{
    const invalid_umask_error_data_t *data;

    PRE(atf_error_is(err, "invalid_umask"));

    data = atf_error_data(err);
    snprintf(buf, buflen, "Could not create the temporary %s %s because "
             "it will not have enough access rights due to the current "
             "umask %05o", stat_type_to_string(data->m_type),
             data->m_path, (unsigned int)data->m_umask);
}
