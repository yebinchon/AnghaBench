
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int PRE (int) ;
 int atf_fs_getcwd (int *) ;
 int atf_fs_path_append_path (int *,int const*) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_is_absolute (int const*) ;
 scalar_t__ atf_is_error (int ) ;

atf_error_t
atf_fs_path_to_absolute(const atf_fs_path_t *p, atf_fs_path_t *pa)
{
    atf_error_t err;

    PRE(!atf_fs_path_is_absolute(p));

    err = atf_fs_getcwd(pa);
    if (atf_is_error(err))
        goto out;

    err = atf_fs_path_append_path(pa, p);
    if (atf_is_error(err))
        atf_fs_path_fini(pa);

out:
    return err;
}
