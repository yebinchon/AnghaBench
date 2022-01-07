
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pimpl; } ;
typedef TYPE_1__ atf_check_result_t ;
struct TYPE_5__ {int m_argv; int m_dir; int m_stderr; int m_stdout; int m_status; } ;


 int atf_fs_path_fini (int *) ;
 int atf_list_fini (int *) ;
 int atf_process_status_fini (int *) ;
 int cleanup_tmpdir (int *,int *,int *) ;
 int free (TYPE_2__*) ;

void
atf_check_result_fini(atf_check_result_t *r)
{
    atf_process_status_fini(&r->pimpl->m_status);

    cleanup_tmpdir(&r->pimpl->m_dir, &r->pimpl->m_stdout,
                   &r->pimpl->m_stderr);
    atf_fs_path_fini(&r->pimpl->m_stdout);
    atf_fs_path_fini(&r->pimpl->m_stderr);
    atf_fs_path_fini(&r->pimpl->m_dir);

    atf_list_fini(&r->pimpl->m_argv);

    free(r->pimpl);
}
