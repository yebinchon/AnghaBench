
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int atf_fs_path_branch_path (int *,int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*,char const*) ;
 scalar_t__ atf_is_error (int ) ;

__attribute__((used)) static
atf_error_t
argv0_to_dir(const char *argv0, atf_fs_path_t *dir)
{
    atf_error_t err;
    atf_fs_path_t temp;

    err = atf_fs_path_init_fmt(&temp, "%s", argv0);
    if (atf_is_error(err))
        goto out;

    err = atf_fs_path_branch_path(&temp, dir);

    atf_fs_path_fini(&temp);
out:
    return err;
}
