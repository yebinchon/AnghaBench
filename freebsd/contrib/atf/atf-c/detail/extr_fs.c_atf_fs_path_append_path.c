
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m_data; } ;
typedef TYPE_1__ atf_fs_path_t ;
typedef int atf_error_t ;


 int atf_dynstr_cstring (int *) ;
 int atf_fs_path_append_fmt (TYPE_1__*,char*,int ) ;

atf_error_t
atf_fs_path_append_path(atf_fs_path_t *p, const atf_fs_path_t *p2)
{
    return atf_fs_path_append_fmt(p, "%s", atf_dynstr_cstring(&p2->m_data));
}
