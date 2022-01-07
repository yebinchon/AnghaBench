
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int INV (int) ;
 int atf_env_get_with_default (char*,char*) ;
 int atf_fs_mkdtemp (int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*,int ) ;
 scalar_t__ atf_is_error (int ) ;

__attribute__((used)) static
atf_error_t
create_tmpdir(atf_fs_path_t *dir)
{
    atf_error_t err;

    err = atf_fs_path_init_fmt(dir, "%s/check.XXXXXX",
                               atf_env_get_with_default("TMPDIR", "/tmp"));
    if (atf_is_error(err))
        goto out;

    err = atf_fs_mkdtemp(dir);
    if (atf_is_error(err)) {
        atf_fs_path_fini(dir);
        goto out;
    }

    INV(!atf_is_error(err));
out:
    return err;
}
