
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_data; } ;
typedef TYPE_1__ atf_fs_path_t ;
typedef int atf_error_t ;
typedef int atf_dynstr_t ;


 int INV (int ) ;
 int atf_dynstr_cstring (int *) ;
 int atf_dynstr_init_substr (int *,int *,size_t,size_t) ;
 size_t atf_dynstr_npos ;
 size_t atf_dynstr_rfind_ch (int *,char) ;
 int atf_equal_dynstr_cstring (int *,int ) ;
 int basename (int ) ;

atf_error_t
atf_fs_path_leaf_name(const atf_fs_path_t *p, atf_dynstr_t *ln)
{
    size_t begpos = atf_dynstr_rfind_ch(&p->m_data, '/');
    atf_error_t err;

    if (begpos == atf_dynstr_npos)
        begpos = 0;
    else
        begpos++;

    err = atf_dynstr_init_substr(ln, &p->m_data, begpos, atf_dynstr_npos);






    return err;
}
