
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_check_result_t ;
struct TYPE_4__ {int m_stderr; } ;


 char const* atf_fs_path_cstring (int *) ;

const char *
atf_check_result_stderr(const atf_check_result_t *r)
{
    return atf_fs_path_cstring(&r->pimpl->m_stderr);
}
