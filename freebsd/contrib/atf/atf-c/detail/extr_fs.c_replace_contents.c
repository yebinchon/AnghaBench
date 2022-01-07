
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_data; } ;
typedef TYPE_1__ atf_fs_path_t ;
typedef int atf_error_t ;


 int INV (int) ;
 int PRE (int) ;
 int atf_dynstr_append_fmt (int *,char*,char const*) ;
 int atf_dynstr_clear (int *) ;
 scalar_t__ atf_dynstr_length (int *) ;
 int atf_is_error (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static
void
replace_contents(atf_fs_path_t *p, const char *buf)
{
    atf_error_t err;

    PRE(atf_dynstr_length(&p->m_data) == strlen(buf));

    atf_dynstr_clear(&p->m_data);
    err = atf_dynstr_append_fmt(&p->m_data, "%s", buf);

    INV(!atf_is_error(err));
}
