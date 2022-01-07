
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 scalar_t__ ENOENT ;
 int atf_error_free (int ) ;
 scalar_t__ atf_error_is (int ,char*) ;
 int atf_fs_access_f ;
 int atf_fs_eaccess (int const*,int ) ;
 scalar_t__ atf_is_error (int ) ;
 scalar_t__ atf_libc_error_code (int ) ;
 int atf_no_error () ;

atf_error_t
atf_fs_exists(const atf_fs_path_t *p, bool *b)
{
    atf_error_t err;

    err = atf_fs_eaccess(p, atf_fs_access_f);
    if (atf_is_error(err)) {
        if (atf_error_is(err, "libc") && atf_libc_error_code(err) == ENOENT) {
            atf_error_free(err);
            err = atf_no_error();
            *b = 0;
        }
    } else
        *b = 1;

    return err;
}
