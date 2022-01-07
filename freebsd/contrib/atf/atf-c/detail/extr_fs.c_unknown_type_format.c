
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_type; char* m_path; } ;
typedef TYPE_1__ unknown_type_error_data_t ;
typedef int atf_error_t ;


 int PRE (int ) ;
 TYPE_1__* atf_error_data (int const) ;
 int atf_error_is (int const,char*) ;
 int snprintf (char*,size_t,char*,int,char*) ;

__attribute__((used)) static
void
unknown_type_format(const atf_error_t err, char *buf, size_t buflen)
{
    const unknown_type_error_data_t *data;

    PRE(atf_error_is(err, "unknown_type"));

    data = atf_error_data(err);
    snprintf(buf, buflen, "Unknown file type %d of %s", data->m_type,
             data->m_path);
}
