
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct atf_check_result_impl {int dummy; } ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;
struct TYPE_4__ {TYPE_2__* pimpl; } ;
typedef TYPE_1__ atf_check_result_t ;
struct TYPE_5__ {int m_argv; int m_dir; int m_stdout; int m_stderr; } ;


 int INV (int) ;
 int array_to_list (char const* const*,int *) ;
 int atf_fs_path_copy (int *,int const*) ;
 int atf_fs_path_cstring (int const*) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*,int ) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_list_fini (int *) ;
 int atf_no_memory_error () ;
 TYPE_2__* malloc (int) ;

__attribute__((used)) static
atf_error_t
atf_check_result_init(atf_check_result_t *r, const char *const *argv,
                      const atf_fs_path_t *dir)
{
    atf_error_t err;

    r->pimpl = malloc(sizeof(struct atf_check_result_impl));
    if (r->pimpl == ((void*)0))
        return atf_no_memory_error();

    err = array_to_list(argv, &r->pimpl->m_argv);
    if (atf_is_error(err))
        goto out;

    err = atf_fs_path_copy(&r->pimpl->m_dir, dir);
    if (atf_is_error(err))
        goto err_argv;

    err = atf_fs_path_init_fmt(&r->pimpl->m_stdout, "%s/stdout",
                               atf_fs_path_cstring(dir));
    if (atf_is_error(err))
        goto err_dir;

    err = atf_fs_path_init_fmt(&r->pimpl->m_stderr, "%s/stderr",
                               atf_fs_path_cstring(dir));
    if (atf_is_error(err))
        goto err_stdout;

    INV(!atf_is_error(err));
    goto out;

err_stdout:
    atf_fs_path_fini(&r->pimpl->m_stdout);
err_dir:
    atf_fs_path_fini(&r->pimpl->m_dir);
err_argv:
    atf_list_fini(&r->pimpl->m_argv);
out:
    return err;
}
