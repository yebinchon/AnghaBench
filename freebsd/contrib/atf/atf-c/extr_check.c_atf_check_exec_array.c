
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int atf_fs_path_t ;
typedef int atf_error_t ;
struct TYPE_7__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_check_result_t ;
struct TYPE_6__ {int m_status; int m_stderr; int m_stdout; } ;


 int INV (int) ;
 int atf_check_result_fini (TYPE_2__*) ;
 int atf_check_result_init (TYPE_2__*,char const* const*,int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_rmdir (int *) ;
 scalar_t__ atf_is_error (int ) ;
 int create_tmpdir (int *) ;
 int fork_and_wait (char const* const*,int *,int *,int *) ;

atf_error_t
atf_check_exec_array(const char *const *argv, atf_check_result_t *r)
{
    atf_error_t err;
    atf_fs_path_t dir;

    err = create_tmpdir(&dir);
    if (atf_is_error(err))
        goto out;

    err = atf_check_result_init(r, argv, &dir);
    if (atf_is_error(err)) {
        atf_error_t err2 = atf_fs_rmdir(&dir);
        INV(!atf_is_error(err2));
        goto out;
    }

    err = fork_and_wait(argv, &r->pimpl->m_stdout, &r->pimpl->m_stderr,
                        &r->pimpl->m_status);
    if (atf_is_error(err)) {
        atf_check_result_fini(r);
        goto out;
    }

    INV(!atf_is_error(err));

    atf_fs_path_fini(&dir);
out:
    return err;
}
