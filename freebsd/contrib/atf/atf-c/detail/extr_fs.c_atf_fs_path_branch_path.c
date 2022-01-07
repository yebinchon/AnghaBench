
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m_data; } ;
typedef TYPE_1__ atf_fs_path_t ;
typedef int atf_error_t ;


 int INV (int ) ;
 int atf_dynstr_cstring (int *) ;
 int atf_dynstr_init_substr (int *,int *,int ,size_t const) ;
 size_t const atf_dynstr_npos ;
 size_t atf_dynstr_rfind_ch (int *,char) ;
 int atf_equal_dynstr_cstring (int *,int ) ;
 int atf_fs_path_init_fmt (TYPE_1__*,char*) ;
 int dirname (int ) ;

atf_error_t
atf_fs_path_branch_path(const atf_fs_path_t *p, atf_fs_path_t *bp)
{
    const size_t endpos = atf_dynstr_rfind_ch(&p->m_data, '/');
    atf_error_t err;

    if (endpos == atf_dynstr_npos)
        err = atf_fs_path_init_fmt(bp, ".");
    else if (endpos == 0)
        err = atf_fs_path_init_fmt(bp, "/");
    else
        err = atf_dynstr_init_substr(&bp->m_data, &p->m_data, 0, endpos);






    return err;
}
